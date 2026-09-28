import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'no_meeting_rooms_model.dart';
export 'no_meeting_rooms_model.dart';

class NoMeetingRoomsWidget extends StatefulWidget {
  const NoMeetingRoomsWidget({super.key});

  @override
  State<NoMeetingRoomsWidget> createState() => _NoMeetingRoomsWidgetState();
}

class _NoMeetingRoomsWidgetState extends State<NoMeetingRoomsWidget> {
  late NoMeetingRoomsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoMeetingRoomsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.meeting_room_outlined,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 60.0,
        ),
        Text(
          'No Meeting Rooms Available',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.mulish(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Text(
          'There are no meeting rooms on this floor.',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.mulish(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ],
    );
  }
}
