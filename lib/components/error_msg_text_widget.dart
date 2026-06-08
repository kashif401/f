import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'error_msg_text_model.dart';
export 'error_msg_text_model.dart';

class ErrorMsgTextWidget extends StatefulWidget {
  const ErrorMsgTextWidget({
    super.key,
    this.message,
    this.showError,
  });

  final String? message;
  final bool? showError;

  @override
  State<ErrorMsgTextWidget> createState() => _ErrorMsgTextWidgetState();
}

class _ErrorMsgTextWidgetState extends State<ErrorMsgTextWidget> {
  late ErrorMsgTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorMsgTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.showError == true,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
        child: Text(
          valueOrDefault<String>(
            widget.message,
            'Error Message',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).error,
                fontSize: 12.0,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ),
    );
  }
}
