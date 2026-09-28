// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/EncryptionService.dart';

Future<dynamic> encryptPayloadForServer(
  dynamic payload,
  String serverPublicKey,
) async {
  final result = EncryptionService.encryptPayloadForServer(
    payload: Map<String, dynamic>.from(payload),
    serverPublicKeyPemEscaped: serverPublicKey,
  );

  return result.toJson();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
