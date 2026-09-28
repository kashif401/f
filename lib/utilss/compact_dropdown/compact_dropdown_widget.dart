import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field9/text_field9_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'compact_dropdown_model.dart';
export 'compact_dropdown_model.dart';

class CompactDropdownWidget extends StatefulWidget {
  const CompactDropdownWidget({
    super.key,
    String? hint,
    this.icon,
    String? label,
    this.helper,
    this.helperPresent,
  })  : this.hint = hint ?? 'Enter visitor\'s full name',
        this.label = label ?? 'Full Name *';

  final String hint;
  final Widget? icon;
  final String label;
  final String? helper;
  final bool? helperPresent;

  @override
  State<CompactDropdownWidget> createState() => _CompactDropdownWidgetState();
}

class _CompactDropdownWidgetState extends State<CompactDropdownWidget> {
  late CompactDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompactDropdownModel());
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
            'Full Name *',
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.mulish(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.3,
              ),
        ),
        wrapWithModel(
          model: _model.textFieldModel,
          updateCallback: () => safeSetState(() {}),
          child: TextField9Widget(
            label: '',
            labelPresent: false,
            helper: widget.helper,
            helperPresent: widget.helperPresent,
            leadingIcon: widget.icon,
            leadingIconPresent: true,
            trailingIconPresent: false,
            hint: valueOrDefault<String>(
              widget.hint,
              'Enter visitor\'s full name',
            ),
            value: '',
            onChange: '',
            onSubmit: '',
            variant: 'outlined',
            error: false,
            trailingIcon: Icon(
              Icons.add_rounded,
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
