import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/booking_card2/booking_card2_widget.dart';
import '/utilss/button20/button20_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'upcoming_bookings_list_model.dart';
export 'upcoming_bookings_list_model.dart';

class UpcomingBookingsListWidget extends StatefulWidget {
  const UpcomingBookingsListWidget({super.key});

  static String routeName = 'UpcomingBookingsList';
  static String routePath = '/upcomingBookingsList';

  @override
  State<UpcomingBookingsListWidget> createState() =>
      _UpcomingBookingsListWidgetState();
}

class _UpcomingBookingsListWidgetState
    extends State<UpcomingBookingsListWidget> {
  late UpcomingBookingsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpcomingBookingsListModel());
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Upcoming',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Text(
                                'Booking',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1A202C),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Button20Widget(
                              iconPresent: false,
                              iconEndPresent: false,
                              content: 'View All',
                              variant: 'ghost',
                              size: 'small',
                              fullWidth: false,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 0.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          wrapWithModel(
                            model: _model.bookingCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: BookingCard2Widget(
                              date: '10/09/26',
                              location: 'CSO-Creativity (8th Floor)',
                              time: '10:00 AM - 10:30 AM',
                              title:
                                  'Weekly Room Booking Test - October Sunday',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bookingCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: BookingCard2Widget(
                              date: '10/12/26',
                              location: 'Boardroom Alpha (12th Floor)',
                              time: '02:00 PM - 03:30 PM',
                              title: 'Quarterly Strategy Sync - Q4 Planning',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bookingCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: BookingCard2Widget(
                              date: '10/15/26',
                              location: 'Innovation Hub (5th Floor)',
                              time: '11:00 AM - 12:00 PM',
                              title: 'Design Review: Mobile App Redesign',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 24.0,
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
