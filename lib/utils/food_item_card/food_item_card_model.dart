import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'food_item_card_widget.dart' show FoodItemCardWidget;
import 'package:flutter/material.dart';

class FoodItemCardModel extends FlutterFlowModel<FoodItemCardWidget> {
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
