import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/notification_item/notification_item_widget.dart';
import '/utils/tab_item/tab_item_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  static String routeName = 'Notifications';
  static String routePath = '/notifications';

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 0),
                                fadeOutDuration: Duration(milliseconds: 0),
                                imageUrl:
                                    'https://dimg.dreamflow.cloud/v1/image/corporate%20logo',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, 0.0),
                              ),
                              Text(
                                'Notifications',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.3,
                                    ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.help_outline_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 8.0),
                    child: Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.tabItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: TabItemWidget(
                                label: 'All',
                                selected: true,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.tabItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: TabItemWidget(
                                label: 'Meeting Rooms',
                                selected: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.tabItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: TabItemWidget(
                                label: 'Parking',
                                selected: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.tabItemModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: TabItemWidget(
                                label: 'Cafeteria',
                                selected: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.tabItemModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: TabItemWidget(
                                label: 'Visitors',
                                selected: false,
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 8.0),
                          child: Container(
                            child: Text(
                              'TODAY',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description: 'Boardroom is booked for 2:00 PM.',
                          icon: Icon(
                            Icons.meeting_room_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFFFF4E5),
                          iconColor: FlutterFlowTheme.of(context).primary,
                          time: '10m ago',
                          title: 'Meeting Confirmed',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description:
                              'Slot B-12 is reserved for your vehicle.',
                          icon: Icon(
                            Icons.local_parking_rounded,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFE3F2FD),
                          iconColor: FlutterFlowTheme.of(context).info,
                          time: '45m ago',
                          title: 'Parking Slot Assigned',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description:
                              'Your lunch order #552 is ready for pickup.',
                          icon: Icon(
                            Icons.restaurant_rounded,
                            color: FlutterFlowTheme.of(context).success,
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFE8F5E9),
                          iconColor: FlutterFlowTheme.of(context).success,
                          time: '1h ago',
                          title: 'Order Ready',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 8.0),
                          child: Container(
                            child: Text(
                              'YESTERDAY',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description:
                              'John Doe is at the reception for your 3:00 PM meeting.',
                          icon: Icon(
                            Icons.person_add_rounded,
                            color: Color(0xFF7B1FA2),
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFF3E5F5),
                          iconColor: Color(0xFF7B1FA2),
                          time: '1d ago',
                          title: 'Visitor Arrived',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description:
                              'Your sync with the Design Team starts in 15 minutes.',
                          icon: Icon(
                            Icons.meeting_room_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFFFF4E5),
                          iconColor: FlutterFlowTheme.of(context).primary,
                          time: '1d ago',
                          title: 'Meeting Reminder',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.notificationItemModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: NotificationItemWidget(
                          description:
                              'The meeting room \'Jupiter\' is unavailable due to maintenance.',
                          icon: Icon(
                            Icons.error_outline_rounded,
                            color: FlutterFlowTheme.of(context).error,
                            size: 24.0,
                          ),
                          iconBg: Color(0xFFFFEBEE),
                          iconColor: FlutterFlowTheme.of(context).error,
                          time: '1d ago',
                          title: 'Booking Cancelled',
                        ),
                      ),
                      Container(
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: wrapWithModel(
                        model: _model.buttonModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ButtonWidget(
                          content: 'Mark all as read',
                          iconPresent: false,
                          iconEndPresent: false,
                          variant: 'ghost',
                          size: 'medium',
                          fullWidth: true,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
