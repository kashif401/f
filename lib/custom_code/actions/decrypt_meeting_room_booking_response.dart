// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/EncryptionService.dart';

Future<dynamic> decryptMeetingRoomBookingResponse(
  String? ek,
  String? data,
  String? clientPrivateKey,
) async {
  print('========== DECRYPTION START ==========');

  try {
    // --------------------------------------------------
    // 1. INPUT VALIDATION
    // --------------------------------------------------

    print(
      '[DECRYPT] ek received: '
      '${ek != null && ek.isNotEmpty}',
    );

    print(
      '[DECRYPT] data received: '
      '${data != null && data.isNotEmpty}',
    );

    print(
      '[DECRYPT] clientPrivateKey received: '
      '${clientPrivateKey != null && clientPrivateKey.isNotEmpty}',
    );

    print(
      '[DECRYPT] ek length: '
      '${ek?.length ?? 0}',
    );

    print(
      '[DECRYPT] encrypted data length: '
      '${data?.length ?? 0}',
    );

    // IMPORTANT:
    // Private key itself is NOT printed.
    print(
      '[DECRYPT] clientPrivateKey length: '
      '${clientPrivateKey?.length ?? 0}',
    );

    if (ek == null || ek.isEmpty) {
      throw Exception(
        'Encrypted key (ek) is missing',
      );
    }

    if (data == null || data.isEmpty) {
      throw Exception(
        'Encrypted data is missing',
      );
    }

    if (clientPrivateKey == null || clientPrivateKey.isEmpty) {
      throw Exception(
        'Client private key is missing',
      );
    }

    // --------------------------------------------------
    // 2. CREATE ENCRYPTED ENVELOPE
    // --------------------------------------------------

    final envelope = EncryptedEnvelope(
      ek: ek,
      data: data,
    );

    print('[DECRYPT] EncryptedEnvelope created successfully');

    // --------------------------------------------------
    // 3. DECRYPT
    // --------------------------------------------------

    print('[DECRYPT] Calling EncryptionService...');
    print(
      '[DECRYPT] clientPrivateKey length: '
      '${clientPrivateKey.length}',
    );

    final result = EncryptionService.decryptResponseFromServer(
      envelope: envelope,
      clientPrivateKeyPemEscaped: clientPrivateKey,
    );

    print(
      '[DECRYPT] Decryption returned successfully',
    );

    print(
      '[DECRYPT] Result type: '
      '${result.runtimeType}',
    );

    // Don't unnecessarily expose sensitive decrypted data
    if (result is String) {
      print(
        '[DECRYPT] Result string length: '
        '${result.length}',
      );
    } else if (result is Map) {
      print(
        '[DECRYPT] Result Map keys: '
        '${result.keys.toList()}',
      );
    }

    print('========== DECRYPTION SUCCESS ==========');

    return result;
  } catch (e, stackTrace) {
    print('========== DECRYPTION FAILED ==========');
    print('[DECRYPT] ERROR: $e');
    print('[DECRYPT] ERROR TYPE: ${e.runtimeType}');
    print('[DECRYPT] STACKTRACE:');
    print(stackTrace);
    print('========================================');

    rethrow;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
