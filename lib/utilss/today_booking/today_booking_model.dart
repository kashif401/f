import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/empty_booking_state2/empty_booking_state2_widget.dart';
import 'today_booking_widget.dart' show TodayBookingWidget;
import 'package:flutter/material.dart';

class TodayBookingModel extends FlutterFlowModel<TodayBookingWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for EmptyBookingState.
  late EmptyBookingState2Model emptyBookingStateModel;

  @override
  void initState(BuildContext context) {
    emptyBookingStateModel =
        createModel(context, () => EmptyBookingState2Model());
  }

  @override
  void dispose() {
    emptyBookingStateModel.dispose();
  }
}
