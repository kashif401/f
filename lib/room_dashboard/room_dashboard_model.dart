import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/room_card2/room_card2_widget.dart';
import '/utilss/suggestion_item/suggestion_item_widget.dart';
import '/utilss/text_field3/text_field3_widget.dart';
import 'room_dashboard_widget.dart' show RoomDashboardWidget;
import 'package:flutter/material.dart';

class RoomDashboardModel extends FlutterFlowModel<RoomDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RoomCard.
  late RoomCard2Model roomCardModel1;
  // Model for RoomCard.
  late RoomCard2Model roomCardModel2;
  // Model for RoomCard.
  late RoomCard2Model roomCardModel3;
  // Model for SuggestionItem.
  late SuggestionItemModel suggestionItemModel1;
  // Model for SuggestionItem.
  late SuggestionItemModel suggestionItemModel2;
  // Model for SuggestionItem.
  late SuggestionItemModel suggestionItemModel3;
  // Model for TextField.
  late TextField3Model textFieldModel;

  @override
  void initState(BuildContext context) {
    roomCardModel1 = createModel(context, () => RoomCard2Model());
    roomCardModel2 = createModel(context, () => RoomCard2Model());
    roomCardModel3 = createModel(context, () => RoomCard2Model());
    suggestionItemModel1 = createModel(context, () => SuggestionItemModel());
    suggestionItemModel2 = createModel(context, () => SuggestionItemModel());
    suggestionItemModel3 = createModel(context, () => SuggestionItemModel());
    textFieldModel = createModel(context, () => TextField3Model());
  }

  @override
  void dispose() {
    roomCardModel1.dispose();
    roomCardModel2.dispose();
    roomCardModel3.dispose();
    suggestionItemModel1.dispose();
    suggestionItemModel2.dispose();
    suggestionItemModel3.dispose();
    textFieldModel.dispose();
  }
}
