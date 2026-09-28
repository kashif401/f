import '/components/appointment_card_widget.dart';
import '/components/bottom_nav_widget.dart';
import '/components/text_field16_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'visitor_appointments_list_widget.dart'
    show VisitorAppointmentsListWidget;
import 'package:flutter/material.dart';

class VisitorAppointmentsListModel
    extends FlutterFlowModel<VisitorAppointmentsListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField16Model textFieldModel;
  // Model for AppointmentCard.
  late AppointmentCardModel appointmentCardModel1;
  // Model for AppointmentCard.
  late AppointmentCardModel appointmentCardModel2;
  // Model for AppointmentCard.
  late AppointmentCardModel appointmentCardModel3;
  // Model for AppointmentCard.
  late AppointmentCardModel appointmentCardModel4;
  // Model for AppointmentCard.
  late AppointmentCardModel appointmentCardModel5;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField16Model());
    appointmentCardModel1 = createModel(context, () => AppointmentCardModel());
    appointmentCardModel2 = createModel(context, () => AppointmentCardModel());
    appointmentCardModel3 = createModel(context, () => AppointmentCardModel());
    appointmentCardModel4 = createModel(context, () => AppointmentCardModel());
    appointmentCardModel5 = createModel(context, () => AppointmentCardModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    appointmentCardModel1.dispose();
    appointmentCardModel2.dispose();
    appointmentCardModel3.dispose();
    appointmentCardModel4.dispose();
    appointmentCardModel5.dispose();
    bottomNavModel.dispose();
  }
}
