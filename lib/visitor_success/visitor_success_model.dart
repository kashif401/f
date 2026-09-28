import '/components/button26_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'visitor_success_widget.dart' show VisitorSuccessWidget;
import 'package:flutter/material.dart';

class VisitorSuccessModel extends FlutterFlowModel<VisitorSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button26Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button26Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
