import '/components/nav_item3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_nav_child8_widget.dart' show BottomNavChild8Widget;
import 'package:flutter/material.dart';

class BottomNavChild8Model extends FlutterFlowModel<BottomNavChild8Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavItem.
  late NavItem3Model navItemModel1;
  // Model for NavItem.
  late NavItem3Model navItemModel2;
  // Model for NavItem.
  late NavItem3Model navItemModel3;

  @override
  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItem3Model());
    navItemModel2 = createModel(context, () => NavItem3Model());
    navItemModel3 = createModel(context, () => NavItem3Model());
  }

  @override
  void dispose() {
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
  }
}
