import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  Local state fields for this page.

  bool showUsernameError = true;

  bool showPasswordError = true;

  dynamic decryptOTPResponse;

  ///  State fields for stateful widgets in this page.

  // State field(s) for EmployeeId widget.
  FocusNode? employeeIdFocusNode;
  TextEditingController? employeeIdTextController;
  String? Function(BuildContext, String?)? employeeIdTextControllerValidator;
  // State field(s) for Passwordtextfield widget.
  FocusNode? passwordtextfieldFocusNode;
  TextEditingController? passwordtextfieldTextController;
  late bool passwordtextfieldVisibility;
  String? Function(BuildContext, String?)?
      passwordtextfieldTextControllerValidator;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in Button widget.
  dynamic encryptedResult;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? apiResultt1y;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Button widget.
  dynamic decryptResponseFromServerOutput;
  bool biometricResultCopy = false;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in IconButton widget.
  dynamic encryptedRefreshCopy;
  // Stores action output result for [Backend Call - API (RefreshToken)] action in IconButton widget.
  ApiCallResponse? refreshResponseCopy;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in IconButton widget.
  dynamic decryptedRefreshCopy;

  @override
  void initState(BuildContext context) {
    passwordtextfieldVisibility = false;
  }

  @override
  void dispose() {
    employeeIdFocusNode?.dispose();
    employeeIdTextController?.dispose();

    passwordtextfieldFocusNode?.dispose();
    passwordtextfieldTextController?.dispose();
  }
}
