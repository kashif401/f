import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/booking_card2/booking_card2_widget.dart';
import '/utilss/button20/button20_widget.dart';
import 'upcoming_bookings_list_widget.dart' show UpcomingBookingsListWidget;
import 'package:flutter/material.dart';

class UpcomingBookingsListModel
    extends FlutterFlowModel<UpcomingBookingsListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button20Model buttonModel;
  // Model for BookingCard.
  late BookingCard2Model bookingCardModel1;
  // Model for BookingCard.
  late BookingCard2Model bookingCardModel2;
  // Model for BookingCard.
  late BookingCard2Model bookingCardModel3;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button20Model());
    bookingCardModel1 = createModel(context, () => BookingCard2Model());
    bookingCardModel2 = createModel(context, () => BookingCard2Model());
    bookingCardModel3 = createModel(context, () => BookingCard2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    bookingCardModel1.dispose();
    bookingCardModel2.dispose();
    bookingCardModel3.dispose();
  }
}
