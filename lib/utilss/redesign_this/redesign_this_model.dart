import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button10/button10_widget.dart';
import 'redesign_this_widget.dart' show RedesignThisWidget;
import 'package:flutter/material.dart';

class RedesignThisModel extends FlutterFlowModel<RedesignThisWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button10Model buttonModel1;
  // Model for Button.
  late Button10Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button10Model());
    buttonModel2 = createModel(context, () => Button10Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
