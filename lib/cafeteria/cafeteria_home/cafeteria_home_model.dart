import '/flutter_flow/flutter_flow_util.dart';
import '/utils/food_category_chip/food_category_chip_widget.dart';
import '/utils/food_item_card/food_item_card_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import 'cafeteria_home_widget.dart' show CafeteriaHomeWidget;
import 'package:flutter/material.dart';

class CafeteriaHomeModel extends FlutterFlowModel<CafeteriaHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for FoodCategoryChip.
  late FoodCategoryChipModel foodCategoryChipModel1;
  // Model for FoodCategoryChip.
  late FoodCategoryChipModel foodCategoryChipModel2;
  // Model for FoodCategoryChip.
  late FoodCategoryChipModel foodCategoryChipModel3;
  // Model for FoodCategoryChip.
  late FoodCategoryChipModel foodCategoryChipModel4;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for FoodItemCard.
  late FoodItemCardModel foodItemCardModel1;
  // Model for FoodItemCard.
  late FoodItemCardModel foodItemCardModel2;
  // Model for FoodItemCard.
  late FoodItemCardModel foodItemCardModel3;
  // Model for FoodItemCard.
  late FoodItemCardModel foodItemCardModel4;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for FoodItemCard.
  late FoodItemCardModel foodItemCardModel5;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    foodCategoryChipModel1 =
        createModel(context, () => FoodCategoryChipModel());
    foodCategoryChipModel2 =
        createModel(context, () => FoodCategoryChipModel());
    foodCategoryChipModel3 =
        createModel(context, () => FoodCategoryChipModel());
    foodCategoryChipModel4 =
        createModel(context, () => FoodCategoryChipModel());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    foodItemCardModel1 = createModel(context, () => FoodItemCardModel());
    foodItemCardModel2 = createModel(context, () => FoodItemCardModel());
    foodItemCardModel3 = createModel(context, () => FoodItemCardModel());
    foodItemCardModel4 = createModel(context, () => FoodItemCardModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    foodItemCardModel5 = createModel(context, () => FoodItemCardModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    foodCategoryChipModel1.dispose();
    foodCategoryChipModel2.dispose();
    foodCategoryChipModel3.dispose();
    foodCategoryChipModel4.dispose();
    sectionHeaderModel1.dispose();
    foodItemCardModel1.dispose();
    foodItemCardModel2.dispose();
    foodItemCardModel3.dispose();
    foodItemCardModel4.dispose();
    sectionHeaderModel2.dispose();
    foodItemCardModel5.dispose();
  }
}
