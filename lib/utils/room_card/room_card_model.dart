import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'room_card_widget.dart' show RoomCardWidget;
import 'package:flutter/material.dart';

class RoomCardModel extends FlutterFlowModel<RoomCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
