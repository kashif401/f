import '/flutter_flow/flutter_flow_util.dart';
import 'visitor_o_t_p_widget.dart' show VisitorOTPWidget;
import 'package:flutter/material.dart';

class VisitorOTPModel extends FlutterFlowModel<VisitorOTPWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
