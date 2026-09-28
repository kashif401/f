import '/components/status_badge2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointment_card_widget.dart' show AppointmentCardWidget;
import 'package:flutter/material.dart';

class AppointmentCardModel extends FlutterFlowModel<AppointmentCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusBadge.
  late StatusBadge2Model statusBadgeModel;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadge2Model());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
  }
}
