import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'food_details_widget.dart' show FoodDetailsWidget;
import 'package:flutter/material.dart';

class FoodDetailsModel extends FlutterFlowModel<FoodDetailsWidget> {
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
