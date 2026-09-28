import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/index.dart';
import 'booking_success_widget.dart' show BookingSuccessWidget;
import 'package:flutter/material.dart';

class BookingSuccessModel extends FlutterFlowModel<BookingSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
