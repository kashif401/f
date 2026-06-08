import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button3/button3_widget.dart';
import '/index.dart';
import 'otp_widget.dart' show OtpWidget;
import 'package:flutter/material.dart';

class OtpModel extends FlutterFlowModel<OtpWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button3Model buttonModel1;
  // Model for Button.
  late Button3Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button3Model());
    buttonModel2 = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
