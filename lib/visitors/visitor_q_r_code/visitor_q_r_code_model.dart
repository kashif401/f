import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'visitor_q_r_code_widget.dart' show VisitorQRCodeWidget;
import 'package:flutter/material.dart';

class VisitorQRCodeModel extends FlutterFlowModel<VisitorQRCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
