import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/picker_trigger/picker_trigger_widget.dart';
import '/utilss/common_error_dialog/common_error_dialog_widget.dart';
import '/utilss/skeleton_circle/skeleton_circle_widget.dart';
import '/utilss/skeleton_text2/skeleton_text2_widget.dart';
import '/utilss/text_field3/text_field3_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'meeting_room_filter_copy_model.dart';
export 'meeting_room_filter_copy_model.dart';

class MeetingRoomFilterCopyWidget extends StatefulWidget {
  const MeetingRoomFilterCopyWidget({
    super.key,
    required this.branchCode,
  });

  final int? branchCode;

  static String routeName = 'MeetingRoomFilterCopy';
  static String routePath = '/meetingRoomFilterCopy';

  @override
  State<MeetingRoomFilterCopyWidget> createState() =>
      _MeetingRoomFilterCopyWidgetState();
}

class _MeetingRoomFilterCopyWidgetState
    extends State<MeetingRoomFilterCopyWidget> {
  late MeetingRoomFilterCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeetingRoomFilterCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedDate = getCurrentTimestamp;
      _model.startTime = getCurrentTimestamp;
      _model.endTime = functions.addOneHour(getCurrentTimestamp);
      _model.loader = true;
      safeSetState(() {});
      _model.apiResultt1y = await GlobalGroup.branchesSearchBranchcodeCall.call(
        authToken: FFAppState().accessToken,
        skip: 0,
        limit: 100,
        sortBy: 'branch_code',
        sortDir: 'asc',
        branchCode: FFAppState().branchCodeSearch,
      );

      if ((_model.apiResultt1y?.succeeded ?? true)) {
        _model.decryptResponseFromServerOutputbranchcode =
            await actions.decryptResponseFromServer(
          (_model.apiResultt1y?.jsonBody ?? ''),
          FFAppConstants.CLIENTPRIVATEKEYPEM,
        );
        _model.decryptResponseBranchCode =
            _model.decryptResponseFromServerOutputbranchcode;
        _model.selectedLocation = getJsonField(
          _model.decryptResponseBranchCode,
          r'''$.BRANCH_NAME''',
        ).toString();
        safeSetState(() {});
        FFAppState().selectedLocation = getJsonField(
          _model.decryptResponseFromServerOutputbranchcode,
          r'''$.data.items[0].BRANCH_NAME''',
        ).toString();
        FFAppState().noOfAttendees = _model.attendees;
        safeSetState(() {});
        _model.apiResultt1yfloor =
            await HomePageGroup.meetingroomsbranchdetailsCall.call(
          authToken: FFAppState().accessToken,
          branchCode: FFAppState().branchCodeSearch,
        );

        if ((_model.apiResultt1yfloor?.succeeded ?? true)) {
          _model.decryptResponseFromServerOutputfloor =
              await actions.decryptResponseFromServer(
            (_model.apiResultt1yfloor?.jsonBody ?? ''),
            FFAppConstants.IconnectprivateKey,
          );
          _model.declocation = _model.decryptResponseFromServerOutputfloor;
          _model.loader = false;
          safeSetState(() {});
          return;
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
                  child: CommonErrorDialogWidget(
                    title: 'Something went wrong',
                    errorType: (_model.apiResultt1yfloor?.statusCode ?? 200)
                        .toString(),
                    message:
                        'Unable to complete your request. Please try again.',
                    retryButtonText: 'Try Again',
                    cancelButtonText: '',
                    onRetry: () async {},
                  ),
                ),
              );
            },
          );

          return;
        }
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
                child: CommonErrorDialogWidget(
                  title: 'Something went wrong',
                  errorType:
                      (_model.apiResultt1y?.statusCode ?? 200).toString(),
                  message: 'Unable to complete your request. Please try again.',
                  retryButtonText: 'Try Again',
                  cancelButtonText: '',
                  onRetry: () async {},
                ),
              ),
            );
          },
        );

        return;
      }
    });
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
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 16.0, 20.0, 16.0),
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                        ActivityHomeScreen2Widget.routeName);

                                    FFAppState().branchCodeSearch =
                                        FFAppState().branchcode;
                                    safeSetState(() {});
                                  },
                                ),
                                Text(
                                  'New Booking',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
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
                Builder(
                  builder: (context) {
                    if (_model.loader == false) {
                      return SingleChildScrollView(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Text(
                                                'Filter Meeting Room',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font: GoogleFonts.mulish(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'Apply filters and book the meeting room that meets your needs.',
                                              style: FlutterFlowTheme.of(
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 11.0,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabelWidget(
                                            label: 'Location',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Container(
                                            height: 69.8,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        child: Container(
                                                          height: 56.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Container(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .textFieldModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      updateOnChange:
                                                                          true,
                                                                      child:
                                                                          TextField3Widget(
                                                                        label:
                                                                            '',
                                                                        labelPresent:
                                                                            false,
                                                                        helper:
                                                                            '',
                                                                        helperPresent:
                                                                            false,
                                                                        leadingIconPresent:
                                                                            false,
                                                                        trailingIconPresent:
                                                                            false,
                                                                        hint:
                                                                            'Search Location',
                                                                        value: FFAppState()
                                                                            .selectedLocation,
                                                                        onChange:
                                                                            '',
                                                                        onSubmit:
                                                                            '',
                                                                        variant:
                                                                            'ghost',
                                                                        error:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context.pushNamed(
                                                                          LocationSearchWidget
                                                                              .routeName);
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .search_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 1.0,
                                                                    height:
                                                                        16.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                model: _model.formLabelModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabelWidget(
                                                  label: 'Floor',
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownfloorValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownfloorValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from(
                                                    (getJsonField(
                                                  _model
                                                      .decryptResponseFromServerOutputfloor,
                                                  r'''$.data.branchDetails.floors[:].floorId''',
                                                  true,
                                                ) as List?)!
                                                        .map<String>(
                                                            (e) => e.toString())
                                                        .toList()
                                                        .cast<String>()),
                                                optionLabels: (getJsonField(
                                                  _model
                                                      .decryptResponseFromServerOutputfloor,
                                                  r'''$.data.branchDetails.floors[:].floorName''',
                                                  true,
                                                ) as List?)!
                                                    .map<String>(
                                                        (e) => e.toString())
                                                    .toList()
                                                    .cast<String>(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                          .dropDownfloorValue =
                                                      val);
                                                  FFAppState().selectedfloor =
                                                      getJsonField(
                                                    _model
                                                        .decryptResponseFromServerOutputfloor,
                                                    r'''$.data.branchDetails.floors[:].floorName''',
                                                  ).toString();
                                                  safeSetState(() {});
                                                  _model.showFloorError = false;
                                                  safeSetState(() {});
                                                },
                                                width: 200.0,
                                                height: 55.0,
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
                                                hintText: 'Select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              if (_model.showFloorError == true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Please Select Floor',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                            ],
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
                                                model: _model.formLabelModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabelWidget(
                                                  label: 'Date',
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet<
                                                          bool>(
                                                      context: context,
                                                      builder: (context) {
                                                        final _datePicked1CupertinoTheme =
                                                            CupertinoTheme.of(
                                                                context);
                                                        return Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              3,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child: CupertinoTheme(
                                                            data:
                                                                _datePicked1CupertinoTheme
                                                                    .copyWith(
                                                              textTheme:
                                                                  _datePicked1CupertinoTheme
                                                                      .textTheme
                                                                      .copyWith(
                                                                dateTimePickerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.mulish(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontStyle,
                                                                        ),
                                                              ),
                                                            ),
                                                            child:
                                                                CupertinoDatePicker(
                                                              mode:
                                                                  CupertinoDatePickerMode
                                                                      .date,
                                                              minimumDate:
                                                                  getCurrentTimestamp,
                                                              initialDateTime:
                                                                  getCurrentTimestamp,
                                                              maximumDate:
                                                                  DateTime(
                                                                      2050),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              use24hFormat:
                                                                  false,
                                                              onDateTimeChanged:
                                                                  (newDateTime) =>
                                                                      safeSetState(
                                                                          () {
                                                                _model.datePicked1 =
                                                                    newDateTime;
                                                              }),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                  _model.selectedDate =
                                                      _model.datePicked1;
                                                  safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model
                                                      .pickerTriggerModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child: PickerTriggerWidget(
                                                    icon: Icon(
                                                      Icons.layers_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                    value:
                                                        valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          "dd/MM/yyyy",
                                                          _model.selectedDate),
                                                      'dd/MM/yyyy',
                                                    ),
                                                    errorMsg: false,
                                                    errorText: 'date ',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                model: _model.formLabelModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabelWidget(
                                                  label: 'Start Time',
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var _shouldSetState = false;
                                                  await showModalBottomSheet<
                                                          bool>(
                                                      context: context,
                                                      builder: (context) {
                                                        final _datePicked2CupertinoTheme =
                                                            CupertinoTheme.of(
                                                                context);
                                                        return Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              3,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child: CupertinoTheme(
                                                            data:
                                                                _datePicked2CupertinoTheme
                                                                    .copyWith(
                                                              textTheme:
                                                                  _datePicked2CupertinoTheme
                                                                      .textTheme
                                                                      .copyWith(
                                                                dateTimePickerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.mulish(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontStyle,
                                                                        ),
                                                              ),
                                                            ),
                                                            child:
                                                                CupertinoDatePicker(
                                                              mode:
                                                                  CupertinoDatePickerMode
                                                                      .time,
                                                              minimumDate:
                                                                  DateTime(
                                                                      1900),
                                                              initialDateTime:
                                                                  getCurrentTimestamp,
                                                              maximumDate:
                                                                  DateTime(
                                                                      2050),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              use24hFormat:
                                                                  false,
                                                              onDateTimeChanged:
                                                                  (newDateTime) =>
                                                                      safeSetState(
                                                                          () {
                                                                _model.datePicked2 =
                                                                    newDateTime;
                                                              }),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                  _model.startTime =
                                                      _model.datePicked2;
                                                  _model.endTime =
                                                      functions.addOneHour(
                                                          _model.datePicked2);
                                                  safeSetState(() {});
                                                  _model.validateMeetingTime =
                                                      await actions
                                                          .validateMeetingTime(
                                                    _model.selectedDate!,
                                                    _model.startTime!,
                                                    _model.endTime!,
                                                  );
                                                  _shouldSetState = true;
                                                  if (_model
                                                          .validateMeetingTime !=
                                                      'VALID') {
                                                    if (_model
                                                            .validateMeetingTime ==
                                                        'DATE_IN_PAST') {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Selected date cannot be in the past. Please select a valid date.',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      if (_model
                                                              .validateMeetingTime ==
                                                          'START_TIME_IN_PAST') {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Start time cannot be in the past. Please select a future time.',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'End time must be later than start time.',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    }
                                                  }
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model
                                                      .pickerTriggerModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child: PickerTriggerWidget(
                                                    icon: Icon(
                                                      Icons.schedule_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                    value:
                                                        valueOrDefault<String>(
                                                      dateTimeFormat("jm",
                                                          _model.startTime),
                                                      'hh:mm',
                                                    ),
                                                    errorMsg: false,
                                                    errorText: 'time',
                                                  ),
                                                ),
                                              ),
                                            ],
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
                                                model: _model.formLabelModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabelWidget(
                                                  label: 'End Time',
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet<
                                                          bool>(
                                                      context: context,
                                                      builder: (context) {
                                                        final _datePicked3CupertinoTheme =
                                                            CupertinoTheme.of(
                                                                context);
                                                        return Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              3,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          child: CupertinoTheme(
                                                            data:
                                                                _datePicked3CupertinoTheme
                                                                    .copyWith(
                                                              textTheme:
                                                                  _datePicked3CupertinoTheme
                                                                      .textTheme
                                                                      .copyWith(
                                                                dateTimePickerTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.mulish(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .fontStyle,
                                                                        ),
                                                              ),
                                                            ),
                                                            child:
                                                                CupertinoDatePicker(
                                                              mode:
                                                                  CupertinoDatePickerMode
                                                                      .time,
                                                              minimumDate:
                                                                  DateTime(
                                                                      1900),
                                                              initialDateTime:
                                                                  getCurrentTimestamp,
                                                              maximumDate:
                                                                  DateTime(
                                                                      2050),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              use24hFormat:
                                                                  false,
                                                              onDateTimeChanged:
                                                                  (newDateTime) =>
                                                                      safeSetState(
                                                                          () {
                                                                _model.datePicked3 =
                                                                    newDateTime;
                                                              }),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                  _model.endTime =
                                                      _model.datePicked3;
                                                  safeSetState(() {});
                                                  if (_model.endTime! <=
                                                      _model.startTime!) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'End time must be after the start time.',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                    _model.endTime = null;
                                                    safeSetState(() {});
                                                  }
                                                },
                                                child: wrapWithModel(
                                                  model: _model
                                                      .pickerTriggerModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child: PickerTriggerWidget(
                                                    icon: Icon(
                                                      Icons.schedule_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                    value:
                                                        valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          "jm", _model.endTime),
                                                      'hh:mm',
                                                    ),
                                                    errorMsg: false,
                                                    errorText: 'time2',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.formLabelModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormLabelWidget(
                                        label: 'Number of Attendees',
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
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
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Minimum Capacity',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      font: GoogleFonts.mulish(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                      lineHeight: 1.6,
                                                    ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .transparent,
                                                    icon: Icon(
                                                      Icons
                                                          .remove_circle_outline_rounded,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.attendees > 1
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                      ),
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      _model.attendees =
                                                          functions
                                                              .updateAttendees(
                                                                  _model
                                                                      .attendees,
                                                                  false);
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      _model.attendees
                                                          .toString(),
                                                      '1',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .mulish(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        Colors.transparent,
                                                    icon: Icon(
                                                      Icons.add_circle_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      _model.attendees =
                                                          functions
                                                              .updateAttendees(
                                                                  _model
                                                                      .attendees,
                                                                  true);
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ].divide(SizedBox(width: 24.0)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 32.0),
                                      child: Container(),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            if (_model.dropDownfloorValue !=
                                                    null &&
                                                _model.dropDownfloorValue !=
                                                    '') {
                                              _model.apiResultt1yMeetingRoomavlaible =
                                                  await HomePageGroup
                                                      .meetingroomsbranchdetailsCall
                                                      .call(
                                                authToken:
                                                    FFAppState().accessToken,
                                                branchCode: FFAppState()
                                                    .branchCodeSearch,
                                              );

                                              _shouldSetState = true;
                                              if ((_model
                                                      .apiResultt1yMeetingRoomavlaible
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.decryptResponseFromServerOutputroomAvlable =
                                                    await actions
                                                        .decryptResponseFromServer(
                                                  (_model.apiResultt1yMeetingRoomavlaible
                                                          ?.jsonBody ??
                                                      ''),
                                                  FFAppConstants
                                                      .IconnectprivateKey,
                                                );
                                                _shouldSetState = true;
                                                _model.getMeetingRoombyFlooroutput =
                                                    await actions
                                                        .getMeetingRoombyFloor(
                                                  _model
                                                      .decryptResponseFromServerOutputroomAvlable!,
                                                  _model.dropDownfloorValue,
                                                );
                                                _shouldSetState = true;
                                                FFAppState().bookingDate =
                                                    _model.selectedDate;
                                                FFAppState().startTime =
                                                    _model.startTime;
                                                FFAppState().endTime =
                                                    _model.endTime;
                                                FFAppState().noOfAttendees =
                                                    _model.attendees;
                                                FFAppState().selectedfloor =
                                                    _model.dropDownfloorValue!;
                                                FFAppState()
                                                        .meetingRoomResponse =
                                                    _model
                                                        .decryptResponseFromServerOutputroomAvlable!;
                                                FFAppState().meetingRoomList =
                                                    _model
                                                        .getMeetingRoombyFlooroutput!
                                                        .toList()
                                                        .cast<dynamic>();
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    AllAvailableRoomsWidget
                                                        .routeName);

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'location api called failed'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              _model.showFloorError = true;
                                              safeSetState(() {});
                                            }

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                          text: 'Search Meeting Room',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 50.0,
                                            padding: EdgeInsets.all(16.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.mulish(
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
                                                      color: Colors.white,
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
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 32.0,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 100.0,
                                              height: 14.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 100.0,
                                                  height: 14.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 180.0,
                                              height: 26.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 180.0,
                                                  height: 26.0,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                        wrapWithModel(
                                          model: _model.skeletonCircleModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SkeletonCircleWidget(
                                            size: 48.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(24.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 50.0,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 140.0,
                                                      height: 16.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel3,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 140.0,
                                                          height: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 200.0,
                                                      height: 12.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel4,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 200.0,
                                                          height: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ),
                                              Container(
                                                width: 80.0,
                                                height: 32.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .surfaceVariant,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 120.0,
                                              height: 20.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 120.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 60.0,
                                              height: 14.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 60.0,
                                                  height: 14.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Container(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .skeletonCircleModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonCircleWidget(
                                                            size: 48.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 40.0,
                                                          height: 12.0,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .skeletonTextModel7,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonText2Widget(
                                                              width: 40.0,
                                                              height: 12.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Container(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .skeletonCircleModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonCircleWidget(
                                                            size: 48.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 40.0,
                                                          height: 12.0,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .skeletonTextModel8,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonText2Widget(
                                                              width: 40.0,
                                                              height: 12.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Container(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .skeletonCircleModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonCircleWidget(
                                                            size: 48.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 40.0,
                                                          height: 12.0,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .skeletonTextModel9,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonText2Widget(
                                                              width: 40.0,
                                                              height: 12.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Container(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .skeletonCircleModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonCircleWidget(
                                                            size: 48.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 40.0,
                                                          height: 12.0,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .skeletonTextModel10,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonText2Widget(
                                                              width: 40.0,
                                                              height: 12.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 60,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(24.0),
                                              child: Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .skeletonCircleModel7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonCircleWidget(
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 20.0,
                                                          height: 16.0,
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .skeletonTextModel11,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonText2Widget(
                                                              width: 20.0,
                                                              height: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 100.0,
                                                      height: 18.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel12,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 100.0,
                                                          height: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 140.0,
                                                      height: 12.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel13,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 140.0,
                                                          height: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .skeletonCircleModel8,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonCircleWidget(
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .skeletonCircleModel9,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonCircleWidget(
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          wrapWithModel(
                                                            model: _model
                                                                .skeletonCircleModel10,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonCircleWidget(
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 40,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(24.0),
                                              child: Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model
                                                          .skeletonCircleModel11,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          SkeletonCircleWidget(
                                                        size: 40.0,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 60.0,
                                                      height: 18.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel14,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 60.0,
                                                          height: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 80.0,
                                                      height: 12.0,
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .skeletonTextModel15,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            SkeletonText2Widget(
                                                          width: 80.0,
                                                          height: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 140.0,
                                              height: 20.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel16,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 140.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 20.0,
                                              height: 20.0,
                                              child: wrapWithModel(
                                                model:
                                                    _model.skeletonTextModel17,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonText2Widget(
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Container(
                                                child: Container(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Container(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .skeletonCircleModel12,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonCircleWidget(
                                                              size: 40.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 120.0,
                                                                  height: 12.0,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .skeletonTextModel18,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        SkeletonText2Widget(
                                                                      width:
                                                                          120.0,
                                                                      height:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 80.0,
                                                                  height: 10.0,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .skeletonTextModel19,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        SkeletonText2Widget(
                                                                      width:
                                                                          80.0,
                                                                      height:
                                                                          10.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Container(
                                                child: Container(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Container(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .skeletonCircleModel13,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                SkeletonCircleWidget(
                                                              size: 40.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 150.0,
                                                                  height: 12.0,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .skeletonTextModel20,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        SkeletonText2Widget(
                                                                      width:
                                                                          150.0,
                                                                      height:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 90.0,
                                                                  height: 10.0,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .skeletonTextModel21,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        SkeletonText2Widget(
                                                                      width:
                                                                          90.0,
                                                                      height:
                                                                          10.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
