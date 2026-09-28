import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common_error_dialog_model.dart';
export 'common_error_dialog_model.dart';

/// Create a reusable FlutterFlow component named **ResendOTPErrorPopup** for
/// the iConnect mobile application.
///
/// ### Design Style
///
/// * Corporate, premium and clean UI
/// * Follow the existing iConnect / ICICI Prudential visual style
/// * White background
/// * Primary orange accent matching the existing Verify & Continue button
/// * Dark navy/black text
/// * Modern rounded corners
/// * Minimal and professional
/// * Mobile-first responsive design
///
/// ### Popup Layout
///
/// Create a centered modal dialog with:
///
/// * Rounded corners: 16px
/// * White background
/// * Subtle shadow/elevation
/// * Width around 320–340px on mobile
/// * Proper horizontal padding of 24px
/// * Vertical spacing between all elements
///
/// ### Top Section
///
/// Add a circular error/warning icon container:
///
/// * Size: 52px
/// * Light orange/red tinted background
/// * Use an appropriate warning/error icon
/// * Icon should be visually simple and professional
///
/// ### Content
///
/// Title:
/// **"Unable to Resend OTP"**
///
/// Description:
/// **"We couldn't resend the OTP right now. Please try again after a few
/// moments."**
///
/// Keep the description centered with a muted grey color and readable font
/// size around 14px.
///
/// ### Action Buttons
///
/// Add two actions:
///
/// Primary button:
/// **"Try Again"**
///
/// * Full width
/// * Orange background
/// * White text
/// * Height around 46–48px
/// * Border radius: 10–12px
///
/// Secondary action:
/// **"Cancel"**
///
/// * Transparent/white background
/// * Dark text
/// * No heavy border
/// * Height around 44px
///
/// ### Component Properties
///
/// Create these component parameters:
///
/// 1. `title`
///
///    * String
///    * Default: "Unable to Resend OTP"
///
/// 2. `message`
///
///    * String
///    * Default: "We couldn't resend the OTP right now. Please try again
/// after a few moments."
///
/// 3. `retryButtonText`
///
///    * String
///    * Default: "Try Again"
///
/// 4. `cancelButtonText`
///
///    * String
///    * Default: "Cancel"
///
/// 5. `onRetry`
///
///    * Action callback
///
/// 6. `onCancel`
///
///    * Action callback
///
/// 7. `errorType`
///
///    * String
///    * Values can represent:
///
///      * 502
///      * 429
///      * 500
///      * Network Error
///
/// ### Behavior
///
/// When the user taps **Try Again**:
///
/// * Close the popup
/// * Trigger the `onRetry` callback
/// * Allow the parent page to call the Resend OTP API again
///
/// When the user taps **Cancel**:
///
/// * Close the popup
/// * Trigger the `onCancel` callback if configured
///
/// ### Error Messages
///
/// Support different messages based on error type:
///
/// 502:
/// **"The OTP service is temporarily unavailable. Please try again later."**
///
/// 429:
/// **"Too many OTP requests. Please wait a few minutes before trying
/// again."**
///
/// 500:
/// **"Something went wrong while resending the OTP. Please try again."**
///
/// Network Error:
/// **"Please check your internet connection and try again."**
///
/// ### UX Requirements
///
/// * Do not make the popup look like a generic FlutterFlow alert dialog.
/// * Make it look like a custom-designed component.
/// * Use smooth entrance animation such as fade + scale.
/// * Keep the component reusable throughout the application.
/// * Ensure text does not overflow on smaller mobile screens.
/// * Maintain consistent typography and spacing with the existing OTP screen.
/// * Make the component suitable for both Android and iOS.
class CommonErrorDialogWidget extends StatefulWidget {
  const CommonErrorDialogWidget({
    super.key,
    String? title,
    String? errorType,
    String? message,
    String? retryButtonText,
    String? cancelButtonText,
    this.onRetry,
  })  : this.title = title ?? '',
        this.errorType = errorType ?? '',
        this.message = message ?? '',
        this.retryButtonText = retryButtonText ?? '',
        this.cancelButtonText = cancelButtonText ?? '';

  final String title;
  final String errorType;
  final String message;
  final String retryButtonText;
  final String cancelButtonText;
  final Future Function()? onRetry;

  @override
  State<CommonErrorDialogWidget> createState() =>
      _CommonErrorDialogWidgetState();
}

class _CommonErrorDialogWidgetState extends State<CommonErrorDialogWidget> {
  late CommonErrorDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonErrorDialogModel());
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Color(0x1AB04D4D),
                      borderRadius: BorderRadius.circular(9999.0),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.error_outline_rounded,
                      color: Color(0xFFFF0000),
                      size: 45.0,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          () {
                            if (widget.errorType == '502') {
                              return 'The service is temporarily unavailable. Please try again later.';
                            } else if (widget.errorType == '429') {
                              return 'Too many requests. Please wait a moment and try again.';
                            } else if (widget.errorType == '500') {
                              return 'Something went wrong on our end. Please try again later.';
                            } else if (widget.errorType == 'Network Error') {
                              return 'Please check your internet connection and try again.';
                            } else if (widget.errorType == '503') {
                              return 'The service is currently unavailable. Please try again later.';
                            } else if (widget.errorType == '504') {
                              return 'The request timed out. Please check your connection and try again.';
                            } else if (widget.errorType == '401') {
                              return 'Your session has expired. Please log in again.';
                            } else if (widget.errorType == '403') {
                              return 'You don’t have permission to perform this action.';
                            } else if (widget.errorType == '404') {
                              return 'Branch with code not found or inactive. Please check the branch code and try again.';
                            } else {
                              return '\t Something went wrong. Please try again.';
                            }
                          }(),
                          'ComparisonConditionalValue(\$errorType == 502 ? StringValue(\"The OTP service is temporarily unavailable. Please try again later.\") : ComparisonConditionalValue(\$errorType == 429 ? StringValue(\"Too many OTP requests. Please wait a few minutes before trying again.\") : ComparisonConditionalValue(\$errorType == 500 ? StringValue(\"Something went wrong while resending the OTP. Please try again.\") : ComparisonConditionalValue(\$errorType == Network Error ? StringValue(\"Please check your internet connection and try again.\") : SlotValue(\$message)))))',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.mulish(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await widget.onRetry?.call();
                        },
                        text: 'ok',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
