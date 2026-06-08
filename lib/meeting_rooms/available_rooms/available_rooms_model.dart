import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/room_card/room_card_widget.dart';
import 'available_rooms_widget.dart' show AvailableRoomsWidget;
import 'package:flutter/material.dart';

class AvailableRoomsModel extends FlutterFlowModel<AvailableRoomsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RoomCard.
  late RoomCardModel roomCardModel1;
  // Model for RoomCard.
  late RoomCardModel roomCardModel2;
  // Model for RoomCard.
  late RoomCardModel roomCardModel3;
  // Model for RoomCard.
  late RoomCardModel roomCardModel4;
  // Model for RoomCard.
  late RoomCardModel roomCardModel5;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    roomCardModel1 = createModel(context, () => RoomCardModel());
    roomCardModel2 = createModel(context, () => RoomCardModel());
    roomCardModel3 = createModel(context, () => RoomCardModel());
    roomCardModel4 = createModel(context, () => RoomCardModel());
    roomCardModel5 = createModel(context, () => RoomCardModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    roomCardModel1.dispose();
    roomCardModel2.dispose();
    roomCardModel3.dispose();
    roomCardModel4.dispose();
    roomCardModel5.dispose();
    buttonModel.dispose();
  }
}
