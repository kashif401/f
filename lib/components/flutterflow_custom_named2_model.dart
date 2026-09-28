import '/components/button24_widget.dart';
import '/components/text_field15_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'flutterflow_custom_named2_widget.dart'
    show FlutterflowCustomNamed2Widget;
import 'package:flutter/material.dart';

class FlutterflowCustomNamed2Model
    extends FlutterFlowModel<FlutterflowCustomNamed2Widget> {
  ///  Local state fields for this component.

  String? enteredQR;

  String? validationError;

  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField15Model textFieldModel;
  // Model for Button.
  late Button24Model buttonModel1;
  // Model for Button.
  late Button24Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField15Model());
    buttonModel1 = createModel(context, () => Button24Model());
    buttonModel2 = createModel(context, () => Button24Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
