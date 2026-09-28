import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/profile_menu_item/profile_menu_item_widget.dart';
import '/index.dart';
import 'profile_screen_widget.dart' show ProfileScreenWidget;
import 'package:flutter/material.dart';

class ProfileScreenModel extends FlutterFlowModel<ProfileScreenWidget> {
  ///  Local state fields for this page.

  dynamic decRespoonseApi;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (profile)] action in ProfileScreen widget.
  ApiCallResponse? apiResultn0a;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in ProfileScreen widget.
  dynamic decryptReponseProfile;
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
  // Stores action output result for [Backend Call - API (logout)] action in Button widget.
  ApiCallResponse? apiResultwu6;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Button widget.
  dynamic decryptresponseLogout;

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
