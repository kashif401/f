import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'action_button_model.dart';
export 'action_button_model.dart';

class ActionButtonWidget extends StatefulWidget {
  const ActionButtonWidget({
    super.key,
    Color? bg,
    Color? border,
    bool? hasIcon,
    this.icon,
    String? label,
    Color? textColor,
  })  : this.bg = bg ?? const Color(0x00000000),
        this.border = border ?? const Color(0x00000000),
        this.hasIcon = hasIcon ?? false,
        this.label = label ?? 'Send OTP  →',
        this.textColor = textColor ?? Colors.white;

  final Color bg;
  final Color border;
  final bool hasIcon;
  final Widget? icon;
  final String label;
  final Color textColor;

  @override
  State<ActionButtonWidget> createState() => _ActionButtonWidgetState();
}

class _ActionButtonWidgetState extends State<ActionButtonWidget> {
  late ActionButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.bg,
          FlutterFlowTheme.of(context).primary,
        ),
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.icon!,
          Text(
            valueOrDefault<String>(
              widget.label,
              'Send OTP  →',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.textColor,
                    Colors.white,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
