// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/EncryptionService.dart';
import 'dart:convert';

Future<dynamic> decryptResponseFromServer(
  dynamic response,
  String clientPrivateKey,
) async {
  print("===== START =====");
  print(response);
  print(clientPrivateKey);
  print("Key Length: ${clientPrivateKey.length}");

  try {
    final jsonResponse = response is String ? jsonDecode(response) : response;

    print(jsonResponse);

    final envelope = EncryptedEnvelope(
      ek: jsonResponse['ek'],
      data: jsonResponse['data'],
    );

    return EncryptionService.decryptResponseFromServer(
      envelope: envelope,
      clientPrivateKeyPemEscaped: clientPrivateKey,
    );
  } catch (e, s) {
    print(e);
    print(s);
    rethrow;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
