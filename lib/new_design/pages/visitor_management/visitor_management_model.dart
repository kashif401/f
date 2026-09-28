import '/flutter_flow/flutter_flow_util.dart';
import '/new_design/utils/button11/button11_widget.dart';
import '/new_design/utils/text_field7/text_field7_widget.dart';
import '/new_design/utils/visitor_o_t_p/visitor_o_t_p_widget.dart';
import '/index.dart';
import 'visitor_management_widget.dart' show VisitorManagementWidget;
import 'package:flutter/material.dart';

class VisitorManagementModel extends FlutterFlowModel<VisitorManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField7Model textFieldModel;
  // Model for VisitorOTP component.
  late VisitorOTPModel visitorOTPModel;
  // Model for Button.
  late Button11Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField7Model());
    visitorOTPModel = createModel(context, () => VisitorOTPModel());
    buttonModel = createModel(context, () => Button11Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    visitorOTPModel.dispose();
    buttonModel.dispose();
  }
}
