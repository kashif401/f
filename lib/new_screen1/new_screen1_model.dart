import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/action_item/action_item_widget.dart';
import '/utilss/activity_row/activity_row_widget.dart';
import '/utilss/app_tile/app_tile_widget.dart';
import '/utilss/button19/button19_widget.dart';
import '/utilss/nav_item/nav_item_widget.dart';
import 'new_screen1_widget.dart' show NewScreen1Widget;
import 'package:flutter/material.dart';

class NewScreen1Model extends FlutterFlowModel<NewScreen1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button19Model buttonModel;
  // Model for ActionItem.
  late ActionItemModel actionItemModel1;
  // Model for ActionItem.
  late ActionItemModel actionItemModel2;
  // Model for ActionItem.
  late ActionItemModel actionItemModel3;
  // Model for ActionItem.
  late ActionItemModel actionItemModel4;
  // Model for AppTile.
  late AppTileModel appTileModel1;
  // Model for AppTile.
  late AppTileModel appTileModel2;
  // Model for AppTile.
  late AppTileModel appTileModel3;
  // Model for AppTile.
  late AppTileModel appTileModel4;
  // Model for ActivityRow.
  late ActivityRowModel activityRowModel1;
  // Model for ActivityRow.
  late ActivityRowModel activityRowModel2;
  // Model for ActivityRow.
  late ActivityRowModel activityRowModel3;
  // Model for NavItem.
  late NavItemModel navItemModel1;
  // Model for NavItem.
  late NavItemModel navItemModel2;
  // Model for NavItem.
  late NavItemModel navItemModel3;
  // Model for NavItem.
  late NavItemModel navItemModel4;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button19Model());
    actionItemModel1 = createModel(context, () => ActionItemModel());
    actionItemModel2 = createModel(context, () => ActionItemModel());
    actionItemModel3 = createModel(context, () => ActionItemModel());
    actionItemModel4 = createModel(context, () => ActionItemModel());
    appTileModel1 = createModel(context, () => AppTileModel());
    appTileModel2 = createModel(context, () => AppTileModel());
    appTileModel3 = createModel(context, () => AppTileModel());
    appTileModel4 = createModel(context, () => AppTileModel());
    activityRowModel1 = createModel(context, () => ActivityRowModel());
    activityRowModel2 = createModel(context, () => ActivityRowModel());
    activityRowModel3 = createModel(context, () => ActivityRowModel());
    navItemModel1 = createModel(context, () => NavItemModel());
    navItemModel2 = createModel(context, () => NavItemModel());
    navItemModel3 = createModel(context, () => NavItemModel());
    navItemModel4 = createModel(context, () => NavItemModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    actionItemModel1.dispose();
    actionItemModel2.dispose();
    actionItemModel3.dispose();
    actionItemModel4.dispose();
    appTileModel1.dispose();
    appTileModel2.dispose();
    appTileModel3.dispose();
    appTileModel4.dispose();
    activityRowModel1.dispose();
    activityRowModel2.dispose();
    activityRowModel3.dispose();
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
    navItemModel4.dispose();
  }
}
