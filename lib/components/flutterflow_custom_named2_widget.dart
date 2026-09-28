import '/components/button24_widget.dart';
import '/components/text_field15_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flutterflow_custom_named2_model.dart';
export 'flutterflow_custom_named2_model.dart';

/// Create a reusable FlutterFlow custom component named "ManualQRDialog" for
/// a corporate visitor management app.
///
/// Purpose:
/// Allow the user to manually enter a Visitor QR code when QR scanning is not
/// possible.
///
/// Design:
/// - Centered modal dialog
/// - White background
/// - Rounded corners: 14–16 px
/// - Width around 320–340 px
/// - Clean corporate mobile UI
/// - Proper spacing and responsive layout
/// - No unnecessary elements
///
/// Header:
/// - Title: "Enter Visitor QR"
/// - Font: Mulish, SemiBold, 18 px
/// - Add a close X icon on the right
/// - Close icon should be tappable
///
/// Description:
/// "Enter the visitor QR code manually to continue."
/// - Font: Mulish, 12–13 px
/// - Grey text
/// - Allow wrapping to 2 lines
///
/// QR Code input:
/// - Label: "QR Code"
/// - TextField below the label
/// - Placeholder: "Enter QR code"
/// - Prefix QR/scan icon
/// - Single-line input
/// - Rounded border
/// - White background
/// - Proper internal padding
/// - Text should not overflow
///
/// Validation:
/// - If the input is empty, show an error message below the TextField:
///   "Please enter QR code"
/// - Error text should be red and small
/// - Do not proceed when the input is empty
///
/// Bottom buttons:
/// - Horizontal Row
/// - "Cancel" button on the left
/// - "Validate & Go" button on the right
/// - Cancel should dismiss/close the dialog
/// - Validate & Go should validate the entered QR code and trigger an
/// action/callback with the entered QR value
/// - Primary button should use the app's existing orange theme
/// - Buttons should have rounded corners around 8 px
///
/// Component parameters:
/// 1. qrValue - String
/// 2. errorText - String
///
/// Also expose an action/callback for:
/// - Validate & Go → return the entered QR code as String
/// - Close/Cancel → close the dialog
///
/// Important:
/// - Make the component reusable from multiple pages.
/// - Do not use Firebase, Firestore, or any backend inside the component.
/// - Do not hardcode API calls.
/// - Keep QR validation/action handling outside the component.
/// - The component should only collect the QR value, perform basic empty
/// validation, and return the value through the callback.
/// - Use FlutterFlow native widgets wherever possible.
class FlutterflowCustomNamed2Widget extends StatefulWidget {
  const FlutterflowCustomNamed2Widget({
    super.key,
    String? qrValue,
    String? errorText,
  })  : this.qrValue = qrValue ?? '',
        this.errorText = errorText ?? '';

  final String qrValue;
  final String errorText;

  @override
  State<FlutterflowCustomNamed2Widget> createState() =>
      _FlutterflowCustomNamed2WidgetState();
}

class _FlutterflowCustomNamed2WidgetState
    extends State<FlutterflowCustomNamed2Widget> {
  late FlutterflowCustomNamed2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlutterflowCustomNamed2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: 340.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Enter Visitor QR',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: Colors.transparent,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
                Text(
                  'Enter the visitor QR code manually to continue.',
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.mulish(
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'QR Code',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.mulish(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    wrapWithModel(
                      model: _model.textFieldModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TextField15Widget(
                        label: '',
                        labelPresent: false,
                        helper: '',
                        helperPresent: false,
                        leadingIcon: Icon(
                          Icons.qr_code_scanner_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        leadingIconPresent: true,
                        trailingIconPresent: false,
                        hint: 'Enter QR code',
                        onChange: '',
                        onSubmit: '',
                        variant: 'outlined',
                        error: false,
                      ),
                    ),
                    if (valueOrDefault<bool>(
                      widget.errorText != '' ? true : false,
                      false,
                    ))
                      Text(
                        widget.errorText,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).error,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                  ].divide(SizedBox(height: 4.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: wrapWithModel(
                        model: _model.buttonModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: Button24Widget(
                          iconPresent: false,
                          iconEndPresent: false,
                          content: 'Cancel',
                          variant: 'ghost',
                          size: 'medium',
                          fullWidth: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: wrapWithModel(
                        model: _model.buttonModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: Button24Widget(
                          iconPresent: false,
                          iconEndPresent: false,
                          content: 'Validate & Go',
                          variant: 'primary',
                          size: 'medium',
                          fullWidth: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
