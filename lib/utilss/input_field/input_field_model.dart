import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/form_label3/form_label3_widget.dart';
import '/utilss/text_field4/text_field4_widget.dart';
import 'input_field_widget.dart' show InputFieldWidget;
import 'package:flutter/material.dart';

class InputFieldModel extends FlutterFlowModel<InputFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormLabel.
  late FormLabel3Model formLabelModel;
  // Model for TextField.
  late TextField4Model textFieldModel;

  @override
  void initState(BuildContext context) {
    formLabelModel = createModel(context, () => FormLabel3Model());
    textFieldModel = createModel(context, () => TextField4Model());
  }

  @override
  void dispose() {
    formLabelModel.dispose();
    textFieldModel.dispose();
  }
}
