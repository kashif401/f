import '/flutter_flow/flutter_flow_util.dart';
import '/utils/text_field/text_field_widget.dart';
import 'visitor_list_widget.dart' show VisitorListWidget;
import 'package:flutter/material.dart';

class VisitorListModel extends FlutterFlowModel<VisitorListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
