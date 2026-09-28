import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'status_badge46c4d420_model.dart';
export 'status_badge46c4d420_model.dart';

class StatusBadge46c4d420Widget extends StatefulWidget {
  const StatusBadge46c4d420Widget({
    super.key,
    Color? bg,
    String? label,
    Color? textColor,
  })  : this.bg = bg ?? const Color(0xFFE8F5E9),
        this.label = label ?? 'APPROVED',
        this.textColor = textColor ?? const Color(0x00000000);

  final Color bg;
  final String label;
  final Color textColor;

  @override
  State<StatusBadge46c4d420Widget> createState() =>
      _StatusBadge46c4d420WidgetState();
}

class _StatusBadge46c4d420WidgetState extends State<StatusBadge46c4d420Widget> {
  late StatusBadge46c4d420Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadge46c4d420Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.bg,
          Color(0xFFE8F5E9),
        ),
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 6.0, 16.0, 6.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'APPROVED',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor,
                    FlutterFlowTheme.of(context).success,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ),
    );
  }
}
