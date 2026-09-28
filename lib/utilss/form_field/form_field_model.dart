import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field8/text_field8_widget.dart';
import 'form_field_widget.dart' show FormFieldWidget;
import 'package:flutter/material.dart';

class FormFieldModel extends FlutterFlowModel<FormFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField8Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField8Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
