import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/profile_menu_item/profile_menu_item_widget.dart';
import 'profile_screen_widget.dart' show ProfileScreenWidget;
import 'package:flutter/material.dart';

class ProfileScreenModel extends FlutterFlowModel<ProfileScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel1;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel2;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel3;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    profileMenuItemModel1 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel2 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel3 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel4 = createModel(context, () => ProfileMenuItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    profileMenuItemModel1.dispose();
    profileMenuItemModel2.dispose();
    profileMenuItemModel3.dispose();
    profileMenuItemModel4.dispose();
    buttonModel.dispose();
  }
}
