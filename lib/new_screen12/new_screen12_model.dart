import '/components/bottom_nav_widget.dart';
import '/components/button27_widget.dart';
import '/components/text_field16_widget.dart';
import '/components/visitor_summary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen12_widget.dart' show NewScreen12Widget;
import 'package:flutter/material.dart';

class NewScreen12Model extends FlutterFlowModel<NewScreen12Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for VisitorSummary.
  late VisitorSummaryModel visitorSummaryModel;
  // Model for TextField.
  late TextField16Model textFieldModel1;
  // Model for TextField.
  late TextField16Model textFieldModel2;
  // Model for TextField.
  late TextField16Model textFieldModel3;
  // Model for TextField.
  late TextField16Model textFieldModel4;
  // Model for TextField.
  late TextField16Model textFieldModel5;
  // Model for TextField.
  late TextField16Model textFieldModel6;
  // Model for TextField.
  late TextField16Model textFieldModel7;
  // Model for Button.
  late Button27Model buttonModel;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    visitorSummaryModel = createModel(context, () => VisitorSummaryModel());
    textFieldModel1 = createModel(context, () => TextField16Model());
    textFieldModel2 = createModel(context, () => TextField16Model());
    textFieldModel3 = createModel(context, () => TextField16Model());
    textFieldModel4 = createModel(context, () => TextField16Model());
    textFieldModel5 = createModel(context, () => TextField16Model());
    textFieldModel6 = createModel(context, () => TextField16Model());
    textFieldModel7 = createModel(context, () => TextField16Model());
    buttonModel = createModel(context, () => Button27Model());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    visitorSummaryModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    textFieldModel5.dispose();
    textFieldModel6.dispose();
    textFieldModel7.dispose();
    buttonModel.dispose();
    bottomNavModel.dispose();
  }
}
