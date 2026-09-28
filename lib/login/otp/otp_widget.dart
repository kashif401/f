import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button3/button3_widget.dart';
import '/utilss/flutterflow_named_resendotperrorpopup/flutterflow_named_resendotperrorpopup_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'otp_model.dart';
export 'otp_model.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  static String routeName = 'OTP';
  static String routePath = '/otp';

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late OtpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.otpGeneratedTime = getCurrentTimestamp;
      safeSetState(() {});
      _model.encryptedResultoTP = await actions.encryptPayloadForServer(
        <String, dynamic>{
          'mobile': FFAppState().mobile,
        },
        FFAppConstants.SERVERPUBLICKEYPEM,
      );
      _model.sendOtpApiOutput = await GlobalGroup.sendOTPCall.call(
        ek: getJsonField(
          _model.encryptedResultoTP,
          r'''$.ek''',
        ).toString(),
        data: getJsonField(
          _model.encryptedResultoTP,
          r'''$.data''',
        ).toString(),
        authToken: FFAppState().accessToken,
      );

      _model.timerController.onStartTimer();
      if ((_model.sendOtpApiOutput?.statusCode ?? 200).toString() == '200') {
        _model.decryptResponseSendOTP = await actions.decryptResponseFromServer(
          (_model.sendOtpApiOutput?.jsonBody ?? ''),
          FFAppConstants.CLIENTPRIVATEKEYPEM,
        );
        _model.decryptOTPResponse = _model.decryptResponseSendOTP;
        _model.canResend = false;
        safeSetState(() {});
        return;
      } else {
        if ((_model.sendOtpApiOutput?.statusCode ?? 200).toString() == '400') {
          await showDialog(
            context: context,
            builder: (dialogContext) {
              return Dialog(
                elevation: 0,
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                alignment: AlignmentDirectional(0.0, 1.0)
                    .resolve(Directionality.of(context)),
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Container(
                    width: double.infinity,
                    child: FlutterflowNamedResendotperrorpopupWidget(
                      title: 'Unable to Resend OTP',
                      errorType: '502',
                      message:
                          'The OTP service is temporarily unavailable. Please try again after a few moments',
                      retryButtonText: 'Try Again',
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          if ((_model.sendOtpApiOutput?.statusCode ?? 200).toString() ==
              '502') {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: AlignmentDirectional(0.0, 1.0)
                      .resolve(Directionality.of(context)),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(dialogContext).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Container(
                      width: double.infinity,
                      child: FlutterflowNamedResendotperrorpopupWidget(
                        title: 'OTP Service Unavailable',
                        errorType: '502',
                        message:
                            'You have requested OTP multiple times. Please try again after 30 minutes.',
                        retryButtonText: 'Try Again',
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: AlignmentDirectional(0.0, 1.0)
                      .resolve(Directionality.of(context)),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(dialogContext).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Container(
                      width: double.infinity,
                      child: FlutterflowNamedResendotperrorpopupWidget(
                        title: 'Unable to Resend OTP',
                        errorType: '502',
                        message:
                            'The OTP service is temporarily unavailable. Please try again after a few moments',
                        retryButtonText: 'Try Again',
                      ),
                    ),
                  ),
                );
              },
            );
          }
        }

        return;
      }
    });

    _model.pinCodeFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: PopScope(
          canPop: false,
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 25.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Logo.png',
                                      width: 132.19,
                                      height: 63.3,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Lottie.asset(
                                    'assets/jsons/security.json',
                                    width: 200.0,
                                    height: 117.1,
                                    fit: BoxFit.contain,
                                    animate: true,
                                  ),
                                  Text(
                                    'Verify OTP',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                  Text(
                                    'Enter the 6-digit code sent to your mobile number',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            height: 12.8,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 292.5,
                                height: 79.9,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 1.0,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    PinCodeTextField(
                                      autoDisposeControllers: false,
                                      appContext: context,
                                      length: 6,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            font: GoogleFonts.mulish(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      enableActiveFill: false,
                                      autoFocus: true,
                                      focusNode: _model.pinCodeFocusNode,
                                      enablePinAutofill: true,
                                      errorTextSpace: 16.0,
                                      showCursor: true,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      obscureText: false,
                                      hintCharacter: '●',
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      pinTheme: PinTheme(
                                        fieldHeight: 44.0,
                                        fieldWidth: 44.0,
                                        borderWidth: 2.0,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        shape: PinCodeFieldShape.box,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        inactiveColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        selectedColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                      controller: _model.pinCodeController,
                                      onChanged: (_) {},
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: _model
                                          .pinCodeControllerValidator
                                          .asValidator(context),
                                    ),
                                    if (_model.showErrorPincode == true)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Please Enter your OTP',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.mulish(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 10.6,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (_model.canResend == false)
                                Icon(
                                  Icons.schedule_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 16.0,
                                ),
                              if (_model.canResend == false)
                                Text(
                                  'Resend OTP in',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                        lineHeight: 1.2,
                                      ),
                                ),
                              if (_model.canResend == false)
                                FlutterFlowTimer(
                                  initialTime: _model.timerInitialTimeMs,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(
                                    value,
                                    hours: false,
                                    milliSecond: false,
                                  ),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                      Duration(milliseconds: 1000),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) safeSetState(() {});
                                  },
                                  onEnded: () async {
                                    _model.timerController.onStopTimer();
                                    _model.canResend = true;
                                    _model.otpTimerLeft = 0;
                                    safeSetState(() {});
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                          Container(
                            height: 30.0,
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var _shouldSetState = false;
                                if (_model.pinCodeController!.text == '') {
                                  _model.showErrorPincode = true;
                                  safeSetState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusScope.of(dialogContext)
                                                .unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child:
                                              FlutterflowNamedResendotperrorpopupWidget(
                                            title: 'OTP Required',
                                            errorType: 'OTP_REQUIRED',
                                            message:
                                                'Please enter the 6-digit OTP.',
                                            retryButtonText: 'OK',
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  _model.showErrorPincode = false;
                                  safeSetState(() {});
                                  if (functions.isOtpIncomplete(
                                          _model.pinCodeController!.text) ==
                                      true) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                FlutterflowNamedResendotperrorpopupWidget(
                                              title: 'OTP Required',
                                              errorType: 'OTP_REQUIRED',
                                              message:
                                                  'Please enter the 6-digit OTP.',
                                              retryButtonText: 'OK',
                                            ),
                                          ),
                                        );
                                      },
                                    );

                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    _model.encryptedResultverifyotp =
                                        await actions.encryptPayloadForServer(
                                      <String, dynamic>{
                                        'mobile': FFAppState().mobile,
                                        'otp': _model.pinCodeController!.text,
                                      },
                                      FFAppConstants.SERVERPUBLICKEYPEM,
                                    );
                                    _shouldSetState = true;
                                    _model.apiResult5qz =
                                        await GlobalGroup.verifyotpCall.call(
                                      ek: getJsonField(
                                        _model.encryptedResultverifyotp,
                                        r'''$.ek''',
                                      ).toString(),
                                      data: getJsonField(
                                        _model.encryptedResultverifyotp,
                                        r'''$.data''',
                                      ).toString(),
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiResult5qz?.statusCode ?? 200)
                                            .toString() ==
                                        '200') {
                                      FFAppState().isLoggedIn = true;
                                      FFAppState().isBiometricEnabled = true;
                                      safeSetState(() {});

                                      context.pushNamed(
                                          ActivityHomeScreen2CopyWidget
                                              .routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      if ((_model.apiResult5qz?.statusCode ??
                                                  200)
                                              .toString() ==
                                          '400') {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    FlutterflowNamedResendotperrorpopupWidget(
                                                  title: 'Invalid OTP',
                                                  errorType: 'INVALID_OTP',
                                                  message:
                                                      'The OTP you entered is incorrect. Please check and enter the correct OTP.',
                                                  retryButtonText: 'Try Again',
                                                ),
                                              ),
                                            );
                                          },
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        if ((_model.sendOtpApiOutput
                                                        ?.statusCode ??
                                                    200)
                                                .toString() ==
                                            '502') {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      FlutterflowNamedResendotperrorpopupWidget(
                                                    title:
                                                        'OTP Service Unavailable',
                                                    errorType:
                                                        'OTP_SERVICE_UNAVAILABLE',
                                                    message:
                                                        'The OTP service is temporarily unavailable. Please try again later.',
                                                    retryButtonText:
                                                        'Try Again',
                                                  ),
                                                ),
                                              );
                                            },
                                          );

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      FlutterflowNamedResendotperrorpopupWidget(
                                                    title:
                                                        'Something Went Wrong ',
                                                    errorType: '500',
                                                    message:
                                                        'We are unable to verify the OTP right now. Please try again later.',
                                                    retryButtonText:
                                                        'Try Again',
                                                  ),
                                                ),
                                              );
                                            },
                                          );

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      }
                                    }
                                  }
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.buttonModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: Button3Widget(
                                  content: 'Verify & Continue',
                                  iconPresent: false,
                                  iconEndPresent: false,
                                  variant: 'primary',
                                  size: 'large',
                                  fullWidth: true,
                                  loading: false,
                                  disabled: false,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 24.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (_model.canResend == true)
                                Text(
                                  'Didn\'t receive code?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              if (_model.canResend == true)
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var _shouldSetState = false;
                                      _model.encryptedResultoTPCopy =
                                          await actions.encryptPayloadForServer(
                                        <String, dynamic>{
                                          'mobile': FFAppState().mobile,
                                        },
                                        FFAppConstants.SERVERPUBLICKEYPEM,
                                      );
                                      _shouldSetState = true;
                                      _model.sendOtpApiOutputresend =
                                          await GlobalGroup.sendOTPCall.call(
                                        ek: getJsonField(
                                          _model.encryptedResultoTPCopy,
                                          r'''$.ek''',
                                        ).toString(),
                                        data: getJsonField(
                                          _model.encryptedResultoTPCopy,
                                          r'''$.data''',
                                        ).toString(),
                                        authToken: FFAppState().accessToken,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.sendOtpApiOutputresend
                                              ?.succeeded ??
                                          true)) {
                                        _model.decryptResponseSendOTPCopy =
                                            await actions
                                                .decryptResponseFromServer(
                                          (_model.sendOtpApiOutput?.jsonBody ??
                                              ''),
                                          FFAppConstants.CLIENTPRIVATEKEYPEM,
                                        );
                                        _shouldSetState = true;
                                        _model.decryptOTPResponse =
                                            _model.decryptResponseSendOTPCopy;
                                        _model.otpGeneratedTime =
                                            getCurrentTimestamp;
                                        _model.canResend = false;
                                        _model.otpTimerLeft = 180;
                                        safeSetState(() {});
                                        _model.timerController.onResetTimer();

                                        _model.timerController.onStartTimer();
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 1.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  child:
                                                      FlutterflowNamedResendotperrorpopupWidget(
                                                    title:
                                                        'Unable to Resend OTP',
                                                    errorType: '502',
                                                    message:
                                                        'The OTP service is temporarily unavailable. Please try again after a few moments',
                                                    retryButtonText:
                                                        'Try Again',
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: Button3Widget(
                                        content: 'Resend',
                                        iconPresent: false,
                                        iconEndPresent: false,
                                        variant: 'ghost',
                                        size: 'small',
                                        fullWidth: false,
                                        loading: false,
                                        disabled: _model.canResend,
                                      ),
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
