import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field8/text_field8_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_field_model.dart';
export 'form_field_model.dart';

class FormFieldWidget extends StatefulWidget {
  const FormFieldWidget({
    super.key,
    String? hint,
    String? icon,
    String? label,
    String? type,
    String? value,
  })  : this.hint = hint ?? 'Enter visitor\'s full name',
        this.icon = icon ?? 'person_outline_rounded',
        this.label = label ?? 'Full Name',
        this.type = type ?? 'name',
        this.value = value ?? '42';

  final String hint;
  final String icon;
  final String label;
  final String type;
  final String value;

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  late FormFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormFieldModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.label,
            'Full Name',
          ),
          style: FlutterFlowTheme.of(context).labelLarge.override(
                font: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        wrapWithModel(
          model: _model.textFieldModel,
          updateCallback: () => safeSetState(() {}),
          child: TextField8Widget(
            label: '',
            labelPresent: false,
            helper: '',
            helperPresent: false,
            leadingIconPresent: false,
            trailingIconPresent: false,
            hint: valueOrDefault<String>(
              widget.hint,
              'Enter visitor\'s full name',
            ),
            value: valueOrDefault<String>(
              widget.value,
              '42',
            ),
            onChange: '',
            onSubmit: '',
            variant: 'filled',
            error: false,
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
