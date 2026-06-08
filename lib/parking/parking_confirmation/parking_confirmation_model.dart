import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'parking_confirmation_widget.dart' show ParkingConfirmationWidget;
import 'package:flutter/material.dart';

class ParkingConfirmationModel
    extends FlutterFlowModel<ParkingConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

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
