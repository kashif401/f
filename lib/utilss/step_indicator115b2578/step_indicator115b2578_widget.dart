import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'step_indicator115b2578_model.dart';
export 'step_indicator115b2578_model.dart';

class StepIndicator115b2578Widget extends StatefulWidget {
  const StepIndicator115b2578Widget({
    super.key,
    Color? c1,
    Color? c2,
    Color? c3,
    Color? textColor1,
    Color? textColor2,
    Color? textColor3,
  })  : this.c1 = c1 ?? const Color(0x00000000),
        this.c2 = c2 ?? const Color(0x00000000),
        this.c3 = c3 ?? const Color(0x00000000),
        this.textColor1 = textColor1 ?? Colors.white,
        this.textColor2 = textColor2 ?? Colors.white,
        this.textColor3 = textColor3 ?? const Color(0x00000000);

  final Color c1;
  final Color c2;
  final Color c3;
  final Color textColor1;
  final Color textColor2;
  final Color textColor3;

  @override
  State<StepIndicator115b2578Widget> createState() =>
      _StepIndicator115b2578WidgetState();
}

class _StepIndicator115b2578WidgetState
    extends State<StepIndicator115b2578Widget> {
  late StepIndicator115b2578Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepIndicator115b2578Model());
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
              widget.c1,
              FlutterFlowTheme.of(context).primary,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '01',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor1,
                    Colors.white,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.3,
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
              widget.c2,
              FlutterFlowTheme.of(context).tertiary,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '02',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor2,
                    Colors.white,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.3,
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
              widget.c3,
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            '03',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor3,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.3,
                ),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
