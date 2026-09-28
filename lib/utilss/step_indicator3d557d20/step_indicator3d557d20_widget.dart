import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'step_indicator3d557d20_model.dart';
export 'step_indicator3d557d20_model.dart';

class StepIndicator3d557d20Widget extends StatefulWidget {
  const StepIndicator3d557d20Widget({
    super.key,
    Color? color1,
    Color? color2,
    Color? color3,
    Color? textColor1,
    Color? textColor2,
    Color? textColor3,
  })  : this.color1 = color1 ?? const Color(0x00000000),
        this.color2 = color2 ?? const Color(0x00000000),
        this.color3 = color3 ?? const Color(0x00000000),
        this.textColor1 = textColor1 ?? Colors.white,
        this.textColor2 = textColor2 ?? const Color(0x00000000),
        this.textColor3 = textColor3 ?? const Color(0x00000000);

  final Color color1;
  final Color color2;
  final Color color3;
  final Color textColor1;
  final Color textColor2;
  final Color textColor3;

  @override
  State<StepIndicator3d557d20Widget> createState() =>
      _StepIndicator3d557d20WidgetState();
}

class _StepIndicator3d557d20WidgetState
    extends State<StepIndicator3d557d20Widget> {
  late StepIndicator3d557d20Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepIndicator3d557d20Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.color1,
              FlutterFlowTheme.of(context).primary,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '01',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor1,
                    Colors.white,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
        Container(
          width: 40.0,
          height: 2.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            shape: BoxShape.rectangle,
          ),
        ),
        Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.color2,
              FlutterFlowTheme.of(context).tertiary,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '02',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor2,
                    FlutterFlowTheme.of(context).primaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
        Container(
          width: 40.0,
          height: 2.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            shape: BoxShape.rectangle,
          ),
        ),
        Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.color3,
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '03',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor3,
                    FlutterFlowTheme.of(context).accent3,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
