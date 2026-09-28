import '/backend/api_requests/api_calls.dart';
import '/components/button27_widget.dart';
import '/components/header_widget.dart';
import '/components/text_field16_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_visitor_model.dart';
export 'create_visitor_model.dart';

class CreateVisitorWidget extends StatefulWidget {
  const CreateVisitorWidget({super.key});

  static String routeName = 'CreateVisitor';
  static String routePath = '/createVisitor';

  @override
  State<CreateVisitorWidget> createState() => _CreateVisitorWidgetState();
}

class _CreateVisitorWidgetState extends State<CreateVisitorWidget> {
  late CreateVisitorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateVisitorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            wrapWithModel(
              model: _model.headerModel,
              updateCallback: () => safeSetState(() {}),
              child: HeaderWidget(
                title: 'Gatekeeper',
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
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
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Create Visitor',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                        lineHeight: 1.35,
                                      ),
                                ),
                                Text(
                                  'Enter visitor information to create a visitor profile.',
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
                              ].divide(SizedBox(height: 4.0)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.textFieldModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextField16Widget(
                                          label: 'First Name',
                                          helper: '',
                                          leadingIcon: Icon(
                                            Icons.person_outline,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIcon: false,
                                          trailingIconPresent: false,
                                          hint: 'Enter first name',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          variant: 'outlined',
                                          error: false,
                                          onTextChange: (text) async {
                                            _model.firstName = text;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextField16Widget(
                                          label: 'Last Name',
                                          helper: '',
                                          leadingIcon: Icon(
                                            Icons.person_outline,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIcon: false,
                                          trailingIconPresent: false,
                                          hint: 'Enter last name',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          variant: 'outlined',
                                          error: false,
                                          onTextChange: (text) async {
                                            _model.lastName = text;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextField16Widget(
                                          label: 'Email',
                                          helper: ' ',
                                          leadingIcon: Icon(
                                            Icons.email_outlined,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIcon: false,
                                          trailingIconPresent: false,
                                          hint: 'visitor@company.com',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          variant: 'outlined',
                                          error: false,
                                          onTextChange: (text) async {
                                            _model.email = text;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextField16Widget(
                                          label: 'Phone Number',
                                          helper: '',
                                          leadingIcon: Icon(
                                            Icons.phone,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIcon: false,
                                          trailingIconPresent: false,
                                          hint: '+91 00000 00000',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          variant: 'outlined',
                                          error: false,
                                          onTextChange: (text) async {
                                            _model.phoneNumber = text;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextField16Widget(
                                          label: 'Company Name',
                                          helper: '',
                                          leadingIcon: Icon(
                                            Icons.business_outlined,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIcon: false,
                                          trailingIconPresent: false,
                                          hint: 'Enter company name',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          variant: 'outlined',
                                          error: false,
                                          onTextChange: (text) async {
                                            _model.companyName = text;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      Container(
                                        height: 16.0,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.apiResult1uc =
                                              await VisitorManagementGroup
                                                  .createVisitorCall
                                                  .call(
                                            firstName: _model.firstName,
                                            lastName: _model.lastName,
                                            email: _model.email,
                                            phoneNumber: _model.phoneNumber,
                                            companyName: _model.companyName,
                                            authToken: FFAppState().accessToken,
                                          );

                                          if ((_model.apiResult1uc?.succeeded ??
                                              true)) {
                                            context.pushNamed(
                                              CreateAppointmentNewWidget
                                                  .routeName,
                                              queryParameters: {
                                                'visitorId': serializeParam(
                                                  getJsonField(
                                                    (_model.apiResult1uc
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data.id''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                                'vehicle': serializeParam(
                                                  '',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  getJsonField(
                                                    (_model.apiResult1uc
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.error.message''',
                                                  ).toString(),
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 9950),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        child: wrapWithModel(
                                          model: _model.buttonModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Button27Widget(
                                            iconPresent: false,
                                            iconEnd: Icon(
                                              Icons.arrow_forward_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                            iconEndPresent: true,
                                            content: 'Next',
                                            variant: 'primary',
                                            size: 'large',
                                            fullWidth: true,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: Container(
                                            child: Container(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.info_outline_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 14.0,
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      'Already have a visitor? We will use the phone number to find the existing visitor.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
