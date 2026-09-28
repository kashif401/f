import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button3/button3_widget.dart';
import '/index.dart';
import 'otp_widget.dart' show OtpWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpModel extends FlutterFlowModel<OtpWidget> {
  ///  Local state fields for this page.

  bool showErrorPincode = false;

  dynamic decryptOTPResponse;

  int otpTimerLeft = 180;

  bool canResend = false;

  DateTime? otpGeneratedTime;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - encryptPayloadForServer] action in OTP widget.
  dynamic encryptedResultoTP;
  // Stores action output result for [Backend Call - API (SendOTP)] action in OTP widget.
  ApiCallResponse? sendOtpApiOutput;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in OTP widget.
  dynamic decryptResponseSendOTP;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 180000;
  int timerMilliseconds = 180000;
  String timerValue = StopWatchTimer.getDisplayTime(
    180000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for Button.
  late Button3Model buttonModel1;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in Button widget.
  dynamic encryptedResultverifyotp;
  // Stores action output result for [Backend Call - API (verifyotp)] action in Button widget.
  ApiCallResponse? apiResult5qz;
  // Model for Button.
  late Button3Model buttonModel2;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in Button widget.
  dynamic encryptedResultoTPCopy;
  // Stores action output result for [Backend Call - API (SendOTP)] action in Button widget.
  ApiCallResponse? sendOtpApiOutputresend;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Button widget.
  dynamic decryptResponseSendOTPCopy;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    buttonModel1 = createModel(context, () => Button3Model());
    buttonModel2 = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
