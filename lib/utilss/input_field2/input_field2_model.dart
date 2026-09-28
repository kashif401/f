import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/form_label4/form_label4_widget.dart';
import '/utilss/text_field5/text_field5_widget.dart';
import 'input_field2_widget.dart' show InputField2Widget;
import 'package:flutter/material.dart';

class InputField2Model extends FlutterFlowModel<InputField2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormLabel.
  late FormLabel4Model formLabelModel;
  // Model for TextField.
  late TextField5Model textFieldModel;

  @override
  void initState(BuildContext context) {
    formLabelModel = createModel(context, () => FormLabel4Model());
    textFieldModel = createModel(context, () => TextField5Model());
  }

  @override
  void dispose() {
    formLabelModel.dispose();
    textFieldModel.dispose();
  }
}
