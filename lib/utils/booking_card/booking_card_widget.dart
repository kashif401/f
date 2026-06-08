import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'booking_card_model.dart';
export 'booking_card_model.dart';

class BookingCardWidget extends StatefulWidget {
  const BookingCardWidget({
    super.key,
    Color? bg,
    this.icon,
    Color? iconColor,
    String? title,
  })  : this.bg = bg ?? const Color(0x00000000),
        this.iconColor = iconColor ?? const Color(0x00000000),
        this.title = title ?? 'Meeting\nRooms';

  final Color bg;
  final Widget? icon;
  final Color iconColor;
  final String title;

  @override
  State<BookingCardWidget> createState() => _BookingCardWidgetState();
}

class _BookingCardWidgetState extends State<BookingCardWidget> {
  late BookingCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.bg,
          FlutterFlowTheme.of(context).secondaryBackground,
        ),
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Stack(
            alignment: AlignmentDirectional(-1.0, -1.0),
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Meeting\nRooms',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                          lineHeight: 1.2,
                        ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Container(
                  width: 48.0,
                  height: 48.0,
                  child: Opacity(
                    opacity: 0.8,
                    child: widget.icon!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
