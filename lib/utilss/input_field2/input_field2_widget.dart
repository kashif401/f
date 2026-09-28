import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/form_label4/form_label4_widget.dart';
import '/utilss/text_field5/text_field5_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'input_field2_model.dart';
export 'input_field2_model.dart';

class InputField2Widget extends StatefulWidget {
  const InputField2Widget({
    super.key,
    String? hint,
    String? icon,
    String? label,
    String? type,
    this.errorMessage,
    this.error,
  })  : this.hint = hint ?? 'Enter full name',
        this.icon = icon ?? 'person_outline_rounded',
        this.label = label ?? 'Visitor Name',
        this.type = type ?? 'name';

  final String hint;
  final String icon;
  final String label;
  final String type;
  final String? errorMessage;
  final bool? error;

  @override
  State<InputField2Widget> createState() => _InputField2WidgetState();
}

class _InputField2WidgetState extends State<InputField2Widget> {
  late InputField2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputField2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.formLabelModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: FormLabel4Widget(
                label: valueOrDefault<String>(
                  widget.label,
                  'Visitor Name',
                ),
              ),
            ),
            wrapWithModel(
              model: _model.textFieldModel,
              updateCallback: () => safeSetState(() {}),
              child: TextField5Widget(
                label: '',
                labelPresent: false,
                helper: '',
                helperPresent: false,
                leadingIcon: Icon(
                  Icons.person_outline_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                leadingIconPresent: false,
                trailingIconPresent: false,
                hint: valueOrDefault<String>(
                  widget.hint,
                  'Enter full name',
                ),
                value: '',
                onChange: '',
                onSubmit: '',
                variant: 'outlined',
                error: widget.error,
              ),
            ),
            if (widget.error ?? true)
              Text(
                valueOrDefault<String>(
                  widget.errorMessage,
                  'Please Enter Visitor Name',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.mulish(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).error,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
