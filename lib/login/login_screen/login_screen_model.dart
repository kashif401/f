import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  Local state fields for this page.

  bool showUsernameError = true;

  bool showPasswordError = true;

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
  // Stores action output result for [Backend Call - API (UAT login)] action in Button widget.
  ApiCallResponse? apiResultt1y;
  bool biometricResult = false;

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
