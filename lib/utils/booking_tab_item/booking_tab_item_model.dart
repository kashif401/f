import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'booking_tab_item_widget.dart' show BookingTabItemWidget;
import 'package:flutter/material.dart';

class BookingTabItemModel extends FlutterFlowModel<BookingTabItemWidget> {
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
