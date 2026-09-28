import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/attendee_counter/attendee_counter_widget.dart';
import 'filter_section_child7_widget.dart' show FilterSectionChild7Widget;
import 'package:flutter/material.dart';

class FilterSectionChild7Model
    extends FlutterFlowModel<FilterSectionChild7Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for AttendeeCounter.
  late AttendeeCounterModel attendeeCounterModel;

  @override
  void initState(BuildContext context) {
    attendeeCounterModel = createModel(context, () => AttendeeCounterModel());
  }

  @override
  void dispose() {
    attendeeCounterModel.dispose();
  }
}
