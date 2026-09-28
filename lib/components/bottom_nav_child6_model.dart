import '/components/nav_item2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_nav_child6_widget.dart' show BottomNavChild6Widget;
import 'package:flutter/material.dart';

class BottomNavChild6Model extends FlutterFlowModel<BottomNavChild6Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavItem.
  late NavItem2Model navItemModel1;
  // Model for NavItem.
  late NavItem2Model navItemModel2;
  // Model for NavItem.
  late NavItem2Model navItemModel3;

  @override
  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItem2Model());
    navItemModel2 = createModel(context, () => NavItem2Model());
    navItemModel3 = createModel(context, () => NavItem2Model());
  }

  @override
  void dispose() {
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
  }
}
