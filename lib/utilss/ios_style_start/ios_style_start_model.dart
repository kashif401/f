import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button9/button9_widget.dart';
import 'ios_style_start_widget.dart' show IosStyleStartWidget;
import 'package:flutter/material.dart';

class IosStyleStartModel extends FlutterFlowModel<IosStyleStartWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button9Model buttonModel1;
  // Model for Button.
  late Button9Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button9Model());
    buttonModel2 = createModel(context, () => Button9Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
