import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button21/button21_widget.dart';
import '/utilss/otp_box/otp_box_widget.dart';
import '/utilss/text_field10/text_field10_widget.dart';
import 'new_visitor_registration_widget.dart' show NewVisitorRegistrationWidget;
import 'package:flutter/material.dart';

class NewVisitorRegistrationModel
    extends FlutterFlowModel<NewVisitorRegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField10Model textFieldModel;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel1;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel2;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel3;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel4;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel5;
  // Model for OtpBox.
  late OtpBoxModel otpBoxModel6;
  // Model for Button.
  late Button21Model buttonModel1;
  // Model for Button.
  late Button21Model buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField10Model());
    otpBoxModel1 = createModel(context, () => OtpBoxModel());
    otpBoxModel2 = createModel(context, () => OtpBoxModel());
    otpBoxModel3 = createModel(context, () => OtpBoxModel());
    otpBoxModel4 = createModel(context, () => OtpBoxModel());
    otpBoxModel5 = createModel(context, () => OtpBoxModel());
    otpBoxModel6 = createModel(context, () => OtpBoxModel());
    buttonModel1 = createModel(context, () => Button21Model());
    buttonModel2 = createModel(context, () => Button21Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    otpBoxModel1.dispose();
    otpBoxModel2.dispose();
    otpBoxModel3.dispose();
    otpBoxModel4.dispose();
    otpBoxModel5.dispose();
    otpBoxModel6.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
