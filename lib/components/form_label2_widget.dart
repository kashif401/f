import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_label2_model.dart';
export 'form_label2_model.dart';

class FormLabel2Widget extends StatefulWidget {
  const FormLabel2Widget({
    super.key,
    String? label,
  }) : this.label = label ?? 'VEHICLE TYPE';

  final String label;

  @override
  State<FormLabel2Widget> createState() => _FormLabel2WidgetState();
}

class _FormLabel2WidgetState extends State<FormLabel2Widget> {
  late FormLabel2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormLabel2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget.label,
        'VEHICLE TYPE',
      ),
      style: FlutterFlowTheme.of(context).labelMedium.override(
            font: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
            ),
            color: FlutterFlowTheme.of(context).secondaryText,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
            lineHeight: 1.4,
          ),
    );
  }
}
