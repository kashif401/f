import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_box_model.dart';
export 'otp_box_model.dart';

class OtpBoxWidget extends StatefulWidget {
  const OtpBoxWidget({
    super.key,
    String? value,
    bool? active,
  })  : this.value = value ?? '4',
        this.active = active ?? false;

  final String value;
  final bool active;

  @override
  State<OtpBoxWidget> createState() => _OtpBoxWidgetState();
}

class _OtpBoxWidgetState extends State<OtpBoxWidget> {
  late OtpBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpBoxModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.0,
      height: 44.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.active,
              false,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).alternate,
          ),
          width: valueOrDefault<double>(
            valueOrDefault<bool>(
              widget.active,
              false,
            )
                ? 1.5
                : 1.5,
            1.5,
          ),
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.value,
          '4',
        ),
        style: FlutterFlowTheme.of(context).titleMedium.override(
              font: GoogleFonts.mulish(
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).primaryText,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
