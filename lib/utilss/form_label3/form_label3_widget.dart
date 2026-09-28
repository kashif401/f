import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_label3_model.dart';
export 'form_label3_model.dart';

class FormLabel3Widget extends StatefulWidget {
  const FormLabel3Widget({
    super.key,
    String? label,
  }) : this.label = label ?? 'SlotValue(\$label)';

  final String label;

  @override
  State<FormLabel3Widget> createState() => _FormLabel3WidgetState();
}

class _FormLabel3WidgetState extends State<FormLabel3Widget> {
  late FormLabel3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormLabel3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
      child: Container(
        child: Text(
          valueOrDefault<String>(
            widget.label,
            'SlotValue(\$label)',
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ),
    );
  }
}
