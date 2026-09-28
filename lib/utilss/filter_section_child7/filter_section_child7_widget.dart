import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/attendee_counter/attendee_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_section_child7_model.dart';
export 'filter_section_child7_model.dart';

class FilterSectionChild7Widget extends StatefulWidget {
  const FilterSectionChild7Widget({super.key});

  @override
  State<FilterSectionChild7Widget> createState() =>
      _FilterSectionChild7WidgetState();
}

class _FilterSectionChild7WidgetState extends State<FilterSectionChild7Widget> {
  late FilterSectionChild7Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterSectionChild7Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        wrapWithModel(
          model: _model.attendeeCounterModel,
          updateCallback: () => safeSetState(() {}),
          child: AttendeeCounterWidget(
            value: '4',
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.person_outline_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 16.0,
            ),
            Text(
              'Including organizer',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.mulish(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ].divide(SizedBox(width: 4.0)),
        ),
      ],
    );
  }
}
