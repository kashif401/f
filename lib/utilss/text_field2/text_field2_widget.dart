import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/common_error_dialog/common_error_dialog_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_field2_model.dart';
export 'text_field2_model.dart';

class TextField2Widget extends StatefulWidget {
  const TextField2Widget({
    super.key,
    String? label,
    bool? labelPresent,
    String? helper,
    bool? helperPresent,
    this.leadingIcon,
    bool? leadingIconPresent,
    this.trailingIcon,
    bool? trailingIconPresent,
    String? hint,
    String? value,
    String? onChange,
    String? onSubmit,
    String? variant,
    bool? error,
  })  : this.label = label ?? '',
        this.labelPresent = labelPresent ?? false,
        this.helper = helper ?? '',
        this.helperPresent = helperPresent ?? false,
        this.leadingIconPresent = leadingIconPresent ?? false,
        this.trailingIconPresent = trailingIconPresent ?? false,
        this.hint = hint ?? 'Search Location',
        this.value = value ?? 'Mumbai',
        this.onChange = onChange ?? '',
        this.onSubmit = onSubmit ?? '',
        this.variant = variant ?? 'ghost',
        this.error = error ?? false;

  final String label;
  final bool labelPresent;
  final String helper;
  final bool helperPresent;
  final Widget? leadingIcon;
  final bool leadingIconPresent;
  final Widget? trailingIcon;
  final bool trailingIconPresent;
  final String hint;
  final String value;
  final String onChange;
  final String onSubmit;
  final String variant;
  final bool error;

  @override
  State<TextField2Widget> createState() => _TextField2WidgetState();
}

class _TextField2WidgetState extends State<TextField2Widget> {
  late TextField2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextField2Model());

    _model.inputserchTextController ??= TextEditingController();
    _model.inputserchFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.label,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.error,
                      false,
                    )
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).primaryText,
                    FlutterFlowTheme.of(context).primaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                () {
                  if (valueOrDefault<String>(
                        widget.variant,
                        'ghost',
                      ) ==
                      'filled') {
                    return FlutterFlowTheme.of(context).secondaryBackground;
                  } else if (valueOrDefault<String>(
                        widget.variant,
                        'ghost',
                      ) ==
                      'ghost') {
                    return Colors.transparent;
                  } else {
                    return Colors.transparent;
                  }
                }(),
                Colors.transparent,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 4.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 4.0;
                    } else {
                      return 4.0;
                    }
                  }(),
                  4.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 4.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 4.0;
                    } else {
                      return 4.0;
                    }
                  }(),
                  4.0,
                )),
                bottomLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 4.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 4.0;
                    } else {
                      return 4.0;
                    }
                  }(),
                  4.0,
                )),
                bottomRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 4.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 4.0;
                    } else {
                      return 4.0;
                    }
                  }(),
                  4.0,
                )),
              ),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.error,
                      false,
                    )) {
                      return FlutterFlowTheme.of(context).error;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return Colors.transparent;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return Colors.transparent;
                    } else {
                      return FlutterFlowTheme.of(context).alternate;
                    }
                  }(),
                  Colors.transparent,
                ),
                width: valueOrDefault<double>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.error,
                      false,
                    )) {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 1.0;
                    }
                  }(),
                  0.0,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.leadingIcon!,
                  Expanded(
                    flex: 1,
                    child: Builder(
                      builder: (context) => TextFormField(
                        controller: _model.inputserchTextController,
                        focusNode: _model.inputserchFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.inputserchTextController',
                          Duration(milliseconds: 2000),
                          () async {
                            var _shouldSetState = false;
                            if (_model.inputserchTextController.text == '') {
                              _model.locationapidatadec = null;
                              safeSetState(() {});
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              _model.apiResultt1y =
                                  await GlobalGroup.branchesSearchCall.call(
                                authToken: FFAppState().accessToken,
                                search: _model.inputserchTextController.text,
                                skip: 0,
                                limit: 100,
                                sortBy: 'branch_code',
                                sortDir: 'asc',
                              );

                              _shouldSetState = true;
                              if ((_model.apiResultt1y?.succeeded ?? true)) {
                                _model.decryptResponseFromServerOutputlo =
                                    await actions.decryptResponseFromServer(
                                  (_model.apiResultt1y?.jsonBody ?? ''),
                                  FFAppConstants.CLIENTPRIVATEKEYPEM,
                                );
                                _shouldSetState = true;
                                _model.locationapidatadec =
                                    _model.decryptResponseFromServerOutputlo;
                                _model.updatePage(() {});
                                _model.apiResultt1yfloor = await HomePageGroup
                                    .meetingroomsbranchdetailsCall
                                    .call(
                                  authToken: FFAppState().accessToken,
                                  branchCode: FFAppState().branchcode,
                                );

                                _shouldSetState = true;
                                if ((_model.apiResultt1yfloor?.succeeded ??
                                    true)) {
                                  _model.decryptResponseFromServerOutputfloor =
                                      await actions.decryptResponseFromServer(
                                    (_model.apiResultt1yfloor?.jsonBody ?? ''),
                                    FFAppConstants.IconnectprivateKey,
                                  );
                                  _shouldSetState = true;
                                  _model.locationapidatadec = _model
                                      .decryptResponseFromServerOutputfloor;
                                  safeSetState(() {});
                                  FFAppState().locationData = _model
                                      .decryptResponseFromServerOutputfloor!;
                                  safeSetState(() {});
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: CommonErrorDialogWidget(
                                          title: 'Something went wrong',
                                          errorType: (_model.apiResultt1yfloor
                                                      ?.statusCode ??
                                                  200)
                                              .toString(),
                                          message:
                                              'Unable to complete your request. Please try again.',
                                          retryButtonText: 'Try Again',
                                          cancelButtonText: '',
                                          onRetry: () async {
                                            context.pushNamed(
                                              MeetingRoomFilterWidget.routeName,
                                              queryParameters: {
                                                'branchCode': serializeParam(
                                                  FFAppState().branchcode,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );

                                  if (_shouldSetState) safeSetState(() {});
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
                                      child: CommonErrorDialogWidget(
                                        title: 'Something went wrong',
                                        errorType:
                                            (_model.apiResultt1y?.statusCode ??
                                                    200)
                                                .toString(),
                                        message:
                                            'Unable to complete your request. Please try again.',
                                        retryButtonText: 'Try Again',
                                        cancelButtonText: '',
                                        onRetry: () async {
                                          context.pushNamed(
                                            MeetingRoomFilterWidget.routeName,
                                            queryParameters: {
                                              'branchCode': serializeParam(
                                                FFAppState().branchcode,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: valueOrDefault<String>(
                            widget.hint,
                            'Search Location',
                          ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: valueOrDefault<Color>(
                                      () {
                                        if (valueOrDefault<String>(
                                              widget.variant,
                                              'ghost',
                                            ) ==
                                            'filled') {
                                          return FlutterFlowTheme.of(context)
                                              .accent3;
                                        } else if (valueOrDefault<String>(
                                              widget.variant,
                                              'ghost',
                                            ) ==
                                            'ghost') {
                                          return FlutterFlowTheme.of(context)
                                              .accent3;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .accent3;
                                        }
                                      }(),
                                      FlutterFlowTheme.of(context).accent3,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: valueOrDefault<Color>(
                                () {
                                  if (valueOrDefault<String>(
                                        widget.variant,
                                        'ghost',
                                      ) ==
                                      'filled') {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else if (valueOrDefault<String>(
                                        widget.variant,
                                        'ghost',
                                      ) ==
                                      'ghost') {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  }
                                }(),
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                        validator: _model.inputserchTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  widget.trailingIcon!,
                ],
              ),
            ),
          ),
          Text(
            widget.helper,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.error,
                      false,
                    )
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
