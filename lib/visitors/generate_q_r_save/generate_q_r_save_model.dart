import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button2/button2_widget.dart';
import '/index.dart';
import 'generate_q_r_save_widget.dart' show GenerateQRSaveWidget;
import 'package:flutter/material.dart';

class GenerateQRSaveModel extends FlutterFlowModel<GenerateQRSaveWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button2Model buttonModel1;
  // Model for Button.
  late Button2Model buttonModel2;
  // Model for Button.
  late Button2Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button2Model());
    buttonModel2 = createModel(context, () => Button2Model());
    buttonModel3 = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
