import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/export.dart';
import 'package:asn1lib/asn1lib.dart';
import 'package:encrypt/encrypt.dart';

class EncryptedEnvelope {
  final String ek;
  final String data;

  EncryptedEnvelope({
    required this.ek,
    required this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'ek': ek,
      'data': data,
    };
  }
}

class EncryptionService {
  static const int _nonceLength = 12;
  static const int _tagLengthBytes = 16;
  static const int _aesKeyLength = 32;

  static String normalizePem(String pem) {
    return pem
        .replaceAll(r'\n', '\n')
        .replaceAll('\r', '')
        .replaceAll('\t', '')
        .replaceAll(' ', '')
        .replaceAll(
            '-----BEGINRSAPRIVATEKEY-----', '-----BEGIN RSA PRIVATE KEY-----')
        .replaceAll(
            '-----ENDRSAPRIVATEKEY-----', '-----END RSA PRIVATE KEY-----')
        .trim();
  }

  static String base64UrlEncodeNoPadding(Uint8List bytes) {
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  static Uint8List base64UrlDecodeAutoPad(String input) {
    final padLength = (4 - (input.length % 4)) % 4;
    final padded = input + ('=' * padLength);
    return Uint8List.fromList(base64Url.decode(padded));
  }

  static Uint8List secureRandomBytes(int length) {
    final rnd = Random.secure();
    return Uint8List.fromList(
      List<int>.generate(length, (_) => rnd.nextInt(256)),
    );
  }

  static Uint8List rsaOaepEncrypt(
    Uint8List plaintext,
    RSAPublicKey publicKey,
  ) {
    final oaep = OAEPEncoding(RSAEngine());

    oaep.init(
      true,
      PublicKeyParameter<RSAPublicKey>(publicKey),
    );

    return oaep.process(plaintext);
  }

  static Uint8List rsaOaepDecrypt(
    Uint8List ciphertext,
    RSAPrivateKey privateKey,
  ) {
    final oaep = OAEPEncoding(RSAEngine());

    oaep.init(
      false,
      PrivateKeyParameter<RSAPrivateKey>(privateKey),
    );

    return oaep.process(ciphertext);
  }

  static EncryptedEnvelope encryptPayloadForServer({
    required Map<String, dynamic> payload,
    required String serverPublicKeyPemEscaped,
  }) {
    final serverPublicKeyPem = normalizePem(serverPublicKeyPemEscaped);

    final publicKey =
        CryptoUtils.rsaPublicKeyFromPem(serverPublicKeyPem) as RSAPublicKey;

    // AES Key
    final aesKey = secureRandomBytes(_aesKeyLength);

    // Nonce
    final nonce = secureRandomBytes(_nonceLength);

    // Plaintext
    final plaintext = Uint8List.fromList(utf8.encode(jsonEncode(payload)));

    // AES GCM
    final gcm = GCMBlockCipher(AESEngine());

    final params = AEADParameters(
      KeyParameter(aesKey),
      _tagLengthBytes * 8,
      nonce,
      Uint8List(0),
    );

    gcm.init(true, params);

    final out = Uint8List(gcm.getOutputSize(plaintext.length));

    var len = gcm.processBytes(
      plaintext,
      0,
      plaintext.length,
      out,
      0,
    );

    len += gcm.doFinal(out, len);

    final cipherWithTag = out.sublist(0, len);

    final encryptedAesKey = rsaOaepEncrypt(aesKey, publicKey);

    final envelopeData = Uint8List.fromList([
      ...nonce,
      ...cipherWithTag,
    ]);

    return EncryptedEnvelope(
      ek: base64UrlEncodeNoPadding(encryptedAesKey),
      data: base64UrlEncodeNoPadding(envelopeData),
    );
  }

  static Map<String, dynamic> decryptResponseFromServer({
    required EncryptedEnvelope envelope,
    required String clientPrivateKeyPemEscaped,
  }) {
    final clientPrivateKeyPem = normalizePem(clientPrivateKeyPemEscaped);
    // print("RuntimeType:${clientPrivateKeyPem.runtimeType}");
    // print("Length: ${clientPrivateKeyPem.length}");
    // print("Start: ${clientPrivateKeyPem.substring(0, 50)}");
    // print(
    //     "End: ${clientPrivateKeyPem.substring(clientPrivateKeyPem.length - 50)}");
    // print(clientPrivateKeyPem.contains("BEGIN RSA PRIVATE KEY"));
    // print(clientPrivateKeyPem.contains("END RSA PRIVATE KEY"));
    // print(clientPrivateKeyPem.codeUnits.take(20).toList());

    //final privateKey =
    //  CryptoUtils.rsaPrivateKeyFromPem(clientPrivateKeyPem) as RSAPrivateKey;

    print(clientPrivateKeyPem.startsWith("-----BEGIN RSA PRIVATE KEY-----"));
    print(clientPrivateKeyPem.endsWith("-----END RSA PRIVATE KEY-----"));
    print(clientPrivateKeyPem.split('\n').length);
    print(clientPrivateKeyPem.replaceAll('\n', '\\n'));
    print("========== NORMALIZED PEM ==========");
    print(clientPrivateKeyPem);
    print("====================================");

    final parser = RSAKeyParser();

    RSAPrivateKey privateKey;

    try {
      privateKey = parser.parse(clientPrivateKeyPem) as RSAPrivateKey;
      print("✅ RSA KEY PARSED SUCCESSFULLY");
    } catch (e, s) {
      print("❌ RSA PARSE FAILED");
      print(e);
      print(s);
      rethrow;
    }

    final encryptedAesKey = base64UrlDecodeAutoPad(envelope.ek);

    final dataBytes = base64UrlDecodeAutoPad(envelope.data);

    if (dataBytes.length < (_nonceLength + _tagLengthBytes)) {
      throw Exception('Invalid encrypted payload');
    }

    final nonce = dataBytes.sublist(0, _nonceLength);
    final cipherWithTag = dataBytes.sublist(_nonceLength);

    final aesKey = rsaOaepDecrypt(encryptedAesKey, privateKey);

    final gcm = GCMBlockCipher(AESEngine());

    final params = AEADParameters(
      KeyParameter(aesKey),
      _tagLengthBytes * 8,
      nonce,
      Uint8List(0),
    );

    gcm.init(false, params);

    final out = Uint8List(
      gcm.getOutputSize(cipherWithTag.length),
    );

    var len = gcm.processBytes(
      cipherWithTag,
      0,
      cipherWithTag.length,
      out,
      0,
    );

    len += gcm.doFinal(out, len);

    final plaintext = out.sublist(0, len);

    return jsonDecode(
      utf8.decode(plaintext),
    ) as Map<String, dynamic>;
  }
}
