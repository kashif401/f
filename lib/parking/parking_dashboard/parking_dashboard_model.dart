import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import 'parking_dashboard_widget.dart' show ParkingDashboardWidget;
import 'package:flutter/material.dart';

class ParkingDashboardModel extends FlutterFlowModel<ParkingDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    buttonModel = createModel(context, () => ButtonModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    buttonModel.dispose();
    sectionHeaderModel2.dispose();
  }
}
