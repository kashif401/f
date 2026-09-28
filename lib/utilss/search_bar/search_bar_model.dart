import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field6/text_field6_widget.dart';
import 'search_bar_widget.dart' show SearchBarWidget;
import 'package:flutter/material.dart';

class SearchBarModel extends FlutterFlowModel<SearchBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField6Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField6Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
