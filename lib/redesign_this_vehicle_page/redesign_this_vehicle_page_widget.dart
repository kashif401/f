import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import '/utilss/form_label2/form_label2_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'redesign_this_vehicle_page_model.dart';
export 'redesign_this_vehicle_page_model.dart';

/// Redesign this vehicle registration screen into a modern iConnect
/// enterprise mobile experience for ICICI Prudential Mutual Fund.
///
/// DO NOT create a centered popup card design.
///
/// Instead create:
/// - A clean integrated mobile screen
/// - Modern enterprise form layout
/// - Compact premium spacing
/// - Professional iConnect mobile app feel
///
/// The screen should feel like:
/// - Real ICICI internal application
/// - Enterprise mobile workflow
/// - Premium concierge registration
/// - Fast receptionist experience
///
/// Use:
/// - ICICI orange accents
/// - White background
/// - Minimal shadows
/// - Thin borders
/// - Modern typography
/// - Compact layout
/// - Elegant spacing
///
/// Remove:
/// - Huge empty spaces
/// - Large centered popup card
/// - Bottom branding section
/// - Generic form styling
///
/// Screen Layout:
///
/// Top App Bar:
/// - Back button
/// - Title: Vehicle Details
///
/// Section:
/// Vehicle Information
///
/// Fields:
/// 1. Vehicle Type Dropdown
/// Options:
/// - Car
/// - Bike
/// - Truck
/// - Van
/// - Other
///
/// 2. Vehicle Number TextField
/// Placeholder:
/// Enter vehicle number
///
/// Example:
/// MH 01 AB 1234
///
/// Bottom Fixed Button:
/// - Save Vehicle Details
///
/// Design Style:
/// - Similar to modern enterprise apps
/// - iConnect mobile app feel
/// - Compact professional layout
/// - Premium receptionist workflow
/// - Fast form filling experience
///
/// The UI should feel clean, modern, responsive, and enterprise-grade.
class RedesignThisVehiclePageWidget extends StatefulWidget {
  const RedesignThisVehiclePageWidget({super.key});

  static String routeName = 'RedesignThisVehiclePage';
  static String routePath = '/redesignThisVehiclePage';

  @override
  State<RedesignThisVehiclePageWidget> createState() =>
      _RedesignThisVehiclePageWidgetState();
}

class _RedesignThisVehiclePageWidgetState
    extends State<RedesignThisVehiclePageWidget> {
  late RedesignThisVehiclePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedesignThisVehiclePageModel());
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
          children: [
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
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                      ),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vehicle Information',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Text(
                                    'Register a new vehicle for campus access',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
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
                                        child: FormLabel2Widget(
                                          label: 'VEHICLE TYPE',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller:
                                              _model.dropdownValueController ??=
                                                  FormFieldController<String>(
                                            _model.dropdownValue ??= 'Car',
                                          ),
                                          options: [
                                            'Car',
                                            'Bike',
                                            'Truck',
                                            'Van',
                                            'Other'
                                          ],
                                          onChanged: (val) => safeSetState(
                                              () => _model.dropdownValue = val),
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
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
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                          hintText: 'Car',
                                          icon: Icon(
                                            Icons.arrow_drop_down_rounded,
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
                                        model: _model.formLabelModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FormLabel2Widget(
                                          label: 'VEHICLE NUMBER',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: wrapWithModel(
                                          model: _model.textFieldModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextFieldWidget(
                                            label: '',
                                            labelPresent: false,
                                            helper: 'Example: MH01AB1234',
                                            helperPresent: false,
                                            hint: 'Enter Vehicle Number',
                                            value: '',
                                            onChange: '',
                                            onSubmit: '',
                                            leadingIconPresent: false,
                                            trailingIconPresent: false,
                                            variant: 'outlined',
                                            error: false,
                                            leadingIcon: Icon(
                                              Icons.directions_car_rounded,
                                            ),
                                            trailingIcon: Icon(
                                              Icons.local_parking,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                      Column(
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
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed(
                                        VisitorDetailsWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        content: 'Save',
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
                                  wrapWithModel(
                                    model: _model.buttonModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      content: 'Cancel',
                                      iconPresent: false,
                                      iconEndPresent: false,
                                      variant: 'ghost',
                                      size: 'medium',
                                      fullWidth: true,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ],
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
