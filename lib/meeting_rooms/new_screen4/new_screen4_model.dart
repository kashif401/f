import '/components/button22_widget.dart';
import '/components/switch_component3_widget.dart';
import '/components/text_field13_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen4_widget.dart' show NewScreen4Widget;
import 'package:flutter/material.dart';

class NewScreen4Model extends FlutterFlowModel<NewScreen4Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField13Model textFieldModel1;
  // Model for TextField.
  late TextField13Model textFieldModel2;
  // Model for TextField.
  late TextField13Model textFieldModel3;
  // Model for TextField.
  late TextField13Model textFieldModel4;
  // Model for Switch.
  late SwitchComponent3Model switchModel;
  // Model for Button.
  late Button22Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField13Model());
    textFieldModel2 = createModel(context, () => TextField13Model());
    textFieldModel3 = createModel(context, () => TextField13Model());
    textFieldModel4 = createModel(context, () => TextField13Model());
    switchModel = createModel(context, () => SwitchComponent3Model());
    buttonModel = createModel(context, () => Button22Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    switchModel.dispose();
    buttonModel.dispose();
  }
}
