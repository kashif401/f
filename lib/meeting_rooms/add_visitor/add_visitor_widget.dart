import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utilss/input_field2/input_field2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_visitor_model.dart';
export 'add_visitor_model.dart';

class AddVisitorWidget extends StatefulWidget {
  const AddVisitorWidget({super.key});

  static String routeName = 'AddVisitor';
  static String routePath = '/addVisitor';

  @override
  State<AddVisitorWidget> createState() => _AddVisitorWidgetState();
}

class _AddVisitorWidgetState extends State<AddVisitorWidget> {
  late AddVisitorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddVisitorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          alignment: AlignmentDirectional(0.0, 1.0),
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Add Visitor',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.mulish(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                            lineHeight: 1.33,
                                          ),
                                    ),
                                    Text(
                                      'Fill in details for security clearance',
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
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 9999.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: 520.0,
                        ),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.inputFieldModel1,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: InputField2Widget(
                                  hint: 'Enter full name',
                                  icon: 'person_outline_rounded',
                                  label: 'Visitor Name',
                                  type: 'name',
                                  errorMessage: _model.visitorNameError,
                                  error: _model.nameError,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inputFieldModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: InputField2Widget(
                                  hint: 'visitor@company.com',
                                  icon: 'mail_outline_rounded',
                                  label: 'Email Address',
                                  type: 'name',
                                  errorMessage: _model.emailError,
                                  error: _model.emailErrorbo,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inputFieldModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: InputField2Widget(
                                  hint: '+91 00000 00000',
                                  icon: 'phone_android_rounded',
                                  label: 'Mobile Number',
                                  type: 'name',
                                  errorMessage: _model.mobileError,
                                  error: _model.mobileErrorbo,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inputFieldModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: InputField2Widget(
                                  hint: 'Organization Name',
                                  icon: 'business_rounded',
                                  label: 'Company',
                                  type: 'name',
                                  errorMessage: _model.companyError,
                                  error: _model.companyerrorbo,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 44.0,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x1AF36F21),
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                                shape: BoxShape.rectangle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.directions_car_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 22.0,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Book Parking',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.5,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  if (_model.inputFieldModel1.textFieldModel
                                              .inputTextController.text ==
                                          '') {
                                    _model.visitorNameError =
                                        'Please Enter Visitor Name';
                                    _model.nameError = true;
                                    safeSetState(() {});
                                  } else {
                                    _model.nameError = false;
                                    safeSetState(() {});
                                  }

                                  if (_model.inputFieldModel2.textFieldModel
                                              .inputTextController.text ==
                                          '') {
                                    _model.emailError =
                                        'Please Enter Email Address';
                                    _model.emailErrorbo = true;
                                    safeSetState(() {});
                                  } else {
                                    _model.emailErrorbo = false;
                                    safeSetState(() {});
                                  }

                                  if (_model.inputFieldModel3.textFieldModel
                                              .inputTextController.text ==
                                          '') {
                                    _model.mobileError =
                                        'Please Enter Mobile Number ';
                                    _model.mobileErrorbo = true;
                                    safeSetState(() {});
                                  } else {
                                    _model.mobileErrorbo = false;
                                    safeSetState(() {});
                                  }

                                  if (_model.inputFieldModel4.textFieldModel
                                              .inputTextController.text ==
                                          '') {
                                    _model.companyError =
                                        'Please Enter Company Name';
                                    _model.companyerrorbo = true;
                                    safeSetState(() {});
                                    return;
                                  } else {
                                    _model.companyerrorbo = false;
                                    safeSetState(() {});
                                    FFAppState().addToSelectedEmployee(<String,
                                        dynamic>{
                                      'EMPLOYEE_NAME': _model
                                          .inputFieldModel1
                                          .textFieldModel
                                          .inputTextController
                                          .text,
                                      'attendeeEmail': _model
                                          .inputFieldModel2
                                          .textFieldModel
                                          .inputTextController
                                          .text,
                                      'attendeeMobile': _model
                                          .inputFieldModel3
                                          .textFieldModel
                                          .inputTextController
                                          .text,
                                      'company_name': _model
                                          .inputFieldModel4
                                          .textFieldModel
                                          .inputTextController
                                          .text,
                                      'attendeeType': 'EXTERNAL',
                                    });
                                    safeSetState(() {});
                                    context.safePop();
                                  }
                                },
                                text: 'Add Visitor',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
