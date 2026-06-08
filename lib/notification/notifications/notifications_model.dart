import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/notification_item/notification_item_widget.dart';
import '/utils/tab_item/tab_item_widget.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TabItem.
  late TabItemModel tabItemModel1;
  // Model for TabItem.
  late TabItemModel tabItemModel2;
  // Model for TabItem.
  late TabItemModel tabItemModel3;
  // Model for TabItem.
  late TabItemModel tabItemModel4;
  // Model for TabItem.
  late TabItemModel tabItemModel5;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel1;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel2;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel3;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel4;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel5;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel6;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    tabItemModel1 = createModel(context, () => TabItemModel());
    tabItemModel2 = createModel(context, () => TabItemModel());
    tabItemModel3 = createModel(context, () => TabItemModel());
    tabItemModel4 = createModel(context, () => TabItemModel());
    tabItemModel5 = createModel(context, () => TabItemModel());
    notificationItemModel1 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel2 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel3 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel4 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel5 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel6 =
        createModel(context, () => NotificationItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    tabItemModel1.dispose();
    tabItemModel2.dispose();
    tabItemModel3.dispose();
    tabItemModel4.dispose();
    tabItemModel5.dispose();
    notificationItemModel1.dispose();
    notificationItemModel2.dispose();
    notificationItemModel3.dispose();
    notificationItemModel4.dispose();
    notificationItemModel5.dispose();
    notificationItemModel6.dispose();
    buttonModel.dispose();
  }
}
