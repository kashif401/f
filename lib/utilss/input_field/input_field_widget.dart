import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/form_label3/form_label3_widget.dart';
import '/utilss/text_field4/text_field4_widget.dart';
import 'package:flutter/material.dart';
import 'input_field_model.dart';
export 'input_field_model.dart';

class InputFieldWidget extends StatefulWidget {
  const InputFieldWidget({
    super.key,
    String? hint,
    String? icon,
    String? label,
    String? type,
  })  : this.hint = hint ?? 'Enter full name',
        this.icon = icon ?? 'person_outline_rounded',
        this.label = label ?? 'Visitor Name',
        this.type = type ?? 'name';

  final String hint;
  final String icon;
  final String label;
  final String type;

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  late InputFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputFieldModel());
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
              child: FormLabel3Widget(
                label: valueOrDefault<String>(
                  widget.label,
                  'Visitor Name',
                ),
              ),
            ),
            wrapWithModel(
              model: _model.textFieldModel,
              updateCallback: () => safeSetState(() {}),
              child: TextField4Widget(
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
                error: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
