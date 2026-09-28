import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/empty_booking_state2/empty_booking_state2_widget.dart';
import 'package:flutter/material.dart';
import 'today_booking_model.dart';
export 'today_booking_model.dart';

class TodayBookingWidget extends StatefulWidget {
  const TodayBookingWidget({super.key});

  @override
  State<TodayBookingWidget> createState() => _TodayBookingWidgetState();
}

class _TodayBookingWidgetState extends State<TodayBookingWidget> {
  late TodayBookingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TodayBookingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.emptyBookingStateModel,
      updateCallback: () => safeSetState(() {}),
      child: EmptyBookingState2Widget(),
    );
  }
}
