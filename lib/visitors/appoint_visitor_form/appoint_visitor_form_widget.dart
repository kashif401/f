import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/checkbox/checkbox_widget.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/picker_trigger/picker_trigger_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appoint_visitor_form_model.dart';
export 'appoint_visitor_form_model.dart';

class AppointVisitorFormWidget extends StatefulWidget {
  const AppointVisitorFormWidget({super.key});

  static String routeName = 'AppointVisitorForm';
  static String routePath = '/appointVisitorForm';

  @override
  State<AppointVisitorFormWidget> createState() =>
      _AppointVisitorFormWidgetState();
}

class _AppointVisitorFormWidgetState extends State<AppointVisitorFormWidget> {
  late AppointVisitorFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointVisitorFormModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              'Appoint Visitor',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
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
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      title: 'Visitor Information',
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.formLabelModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabelWidget(
                                          label: 'Full Name',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldWidget(
                                          label: '',
                                          labelPresent: false,
                                          helper: '',
                                          helperPresent: false,
                                          hint: 'Enter guest\'s full name',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          leadingIcon: Icon(
                                            Icons.person_outline_rounded,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIconPresent: false,
                                          variant: 'outlined',
                                          error: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.formLabelModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabelWidget(
                                          label: 'Phone Number',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldWidget(
                                          label: '',
                                          labelPresent: false,
                                          helper: '',
                                          helperPresent: false,
                                          hint: '+91 00000 00000',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          leadingIcon: Icon(
                                            Icons.phone_android_rounded,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIconPresent: false,
                                          variant: 'outlined',
                                          error: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.formLabelModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabelWidget(
                                          label: 'Email Address',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldWidget(
                                          label: '',
                                          labelPresent: false,
                                          helper: '',
                                          helperPresent: false,
                                          hint: 'guest@example.com',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          leadingIcon: Icon(
                                            Icons.mail_outline_rounded,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIconPresent: false,
                                          variant: 'outlined',
                                          error: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      title: 'Visit Details',
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.formLabelModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabelWidget(
                                          label: 'Purpose of Visit',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller:
                                              _model.dropdownValueController ??=
                                                  FormFieldController<String>(
                                            _model.dropdownValue ??=
                                                'Interview',
                                          ),
                                          options: [
                                            'Interview',
                                            'Business Meeting',
                                            'Personal',
                                            'Service/Maintenance'
                                          ],
                                          onChanged: (val) => safeSetState(
                                              () => _model.dropdownValue = val),
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
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
                                          hintText: 'Select purpose',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      wrapWithModel(
                                        model: _model.formLabelModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabelWidget(
                                          label: 'Host Name',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textFieldModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldWidget(
                                          label: '',
                                          labelPresent: false,
                                          helper: '',
                                          helperPresent: false,
                                          hint: 'Search employee name',
                                          value: '',
                                          onChange: '',
                                          onSubmit: '',
                                          leadingIcon: Icon(
                                            Icons.search_rounded,
                                          ),
                                          leadingIconPresent: true,
                                          trailingIconPresent: false,
                                          variant: 'outlined',
                                          error: false,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            wrapWithModel(
                                              model: _model.formLabelModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormLabelWidget(
                                                label: 'Date',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.pickerTriggerModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PickerTriggerWidget(
                                                icon: Icon(
                                                  Icons.calendar_today_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                                value: 'Select Date',
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            wrapWithModel(
                                              model: _model.formLabelModel7,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormLabelWidget(
                                                label: 'Time',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.pickerTriggerModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PickerTriggerWidget(
                                                icon: Icon(
                                                  Icons.schedule_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 20.0,
                                                ),
                                                value: 'Select Time',
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.checkboxModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CheckboxWidget(
                                      label: 'Request Guest Wi-Fi Access',
                                      subtitle: 'Receive weekly updates',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      isChecked: false,
                                      hasSubtitle: false,
                                      disabled: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.checkboxModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CheckboxWidget(
                                      label: 'Reserve Visitor Parking',
                                      subtitle: 'Receive weekly updates',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      isChecked: false,
                                      hasSubtitle: false,
                                      disabled: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Container(
                                height: 32.0,
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: wrapWithModel(
                        model: _model.buttonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ButtonWidget(
                          content: 'Register Visitor',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
