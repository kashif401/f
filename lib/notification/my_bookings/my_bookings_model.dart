import '/flutter_flow/flutter_flow_util.dart';
import '/utils/booking_list_item/booking_list_item_widget.dart';
import '/utils/booking_tab_item/booking_tab_item_widget.dart';
import '/utils/button/button_widget.dart';
import 'my_bookings_widget.dart' show MyBookingsWidget;
import 'package:flutter/material.dart';

class MyBookingsModel extends FlutterFlowModel<MyBookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BookingTabItem.
  late BookingTabItemModel bookingTabItemModel1;
  // Model for BookingTabItem.
  late BookingTabItemModel bookingTabItemModel2;
  // Model for BookingTabItem.
  late BookingTabItemModel bookingTabItemModel3;
  // Model for BookingListItem.
  late BookingListItemModel bookingListItemModel1;
  // Model for BookingListItem.
  late BookingListItemModel bookingListItemModel2;
  // Model for BookingListItem.
  late BookingListItemModel bookingListItemModel3;
  // Model for BookingListItem.
  late BookingListItemModel bookingListItemModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    bookingTabItemModel1 = createModel(context, () => BookingTabItemModel());
    bookingTabItemModel2 = createModel(context, () => BookingTabItemModel());
    bookingTabItemModel3 = createModel(context, () => BookingTabItemModel());
    bookingListItemModel1 = createModel(context, () => BookingListItemModel());
    bookingListItemModel2 = createModel(context, () => BookingListItemModel());
    bookingListItemModel3 = createModel(context, () => BookingListItemModel());
    bookingListItemModel4 = createModel(context, () => BookingListItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    bookingTabItemModel1.dispose();
    bookingTabItemModel2.dispose();
    bookingTabItemModel3.dispose();
    bookingListItemModel1.dispose();
    bookingListItemModel2.dispose();
    bookingListItemModel3.dispose();
    bookingListItemModel4.dispose();
    buttonModel.dispose();
  }
}
