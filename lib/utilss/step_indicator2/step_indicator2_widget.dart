import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'step_indicator2_model.dart';
export 'step_indicator2_model.dart';

class StepIndicator2Widget extends StatefulWidget {
  const StepIndicator2Widget({
    super.key,
    String? label,
    String? number,
    bool? active,
  })  : this.label = label ?? 'Verify',
        this.number = number ?? '01',
        this.active = active ?? false;

  final String label;
  final String number;
  final bool active;

  @override
  State<StepIndicator2Widget> createState() => _StepIndicator2WidgetState();
}

class _StepIndicator2WidgetState extends State<StepIndicator2Widget> {
  late StepIndicator2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepIndicator2Model());
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
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              valueOrDefault<bool>(
                widget.active,
                false,
              )
                  ? FlutterFlowTheme.of(context).tertiary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: valueOrDefault<Color>(
                valueOrDefault<bool>(
                  widget.active,
                  false,
                )
                    ? FlutterFlowTheme.of(context).tertiary
                    : FlutterFlowTheme.of(context).alternate,
                FlutterFlowTheme.of(context).alternate,
              ),
              width: valueOrDefault<double>(
                valueOrDefault<bool>(
                  widget.active,
                  false,
                )
                    ? 1.0
                    : 1.0,
                1.0,
              ),
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.number,
              '01',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.mulish(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.active,
                      false,
                    )
                        ? Colors.white
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'Verify',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.mulish(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: valueOrDefault<Color>(
                  valueOrDefault<bool>(
                    widget.active,
                    false,
                  )
                      ? FlutterFlowTheme.of(context).primaryText
                      : FlutterFlowTheme.of(context).accent3,
                  FlutterFlowTheme.of(context).accent3,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.2,
              ),
        ),
      ].divide(SizedBox(width: 4.0)),
    );
  }
}
