// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future clearLogoutState() async {
  final appState = FFAppState();

  appState.accessToken = '';
  appState.refreshToken = '';
  appState.isLoggedIn = false;
  appState.loginId = '';

// Clear login response if it is a JSON App State.
  appState.loginResponse = {};

  appState.update(() {});
}
