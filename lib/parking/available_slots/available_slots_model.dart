import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/parking_slot/parking_slot_widget.dart';
import '/utils/tab_group/tab_group_widget.dart';
import 'available_slots_widget.dart' show AvailableSlotsWidget;
import 'package:flutter/material.dart';

class AvailableSlotsModel extends FlutterFlowModel<AvailableSlotsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel1;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel2;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel3;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel4;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel5;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel6;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel7;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel8;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel9;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel10;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel11;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel12;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel13;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel14;
  // Model for ParkingSlot.
  late ParkingSlotModel parkingSlotModel15;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    tabGroupModel = createModel(context, () => TabGroupModel());
    parkingSlotModel1 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel2 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel3 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel4 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel5 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel6 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel7 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel8 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel9 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel10 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel11 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel12 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel13 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel14 = createModel(context, () => ParkingSlotModel());
    parkingSlotModel15 = createModel(context, () => ParkingSlotModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabGroupModel.dispose();
    parkingSlotModel1.dispose();
    parkingSlotModel2.dispose();
    parkingSlotModel3.dispose();
    parkingSlotModel4.dispose();
    parkingSlotModel5.dispose();
    parkingSlotModel6.dispose();
    parkingSlotModel7.dispose();
    parkingSlotModel8.dispose();
    parkingSlotModel9.dispose();
    parkingSlotModel10.dispose();
    parkingSlotModel11.dispose();
    parkingSlotModel12.dispose();
    parkingSlotModel13.dispose();
    parkingSlotModel14.dispose();
    parkingSlotModel15.dispose();
    buttonModel.dispose();
  }
}
