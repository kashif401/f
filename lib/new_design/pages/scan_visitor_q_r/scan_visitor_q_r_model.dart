import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'scan_visitor_q_r_widget.dart' show ScanVisitorQRWidget;
import 'package:flutter/material.dart';

class ScanVisitorQRModel extends FlutterFlowModel<ScanVisitorQRWidget> {
  ///  Local state fields for this page.

  String? scannedQR;

  String scanStatus = 'Ready To Scan';

  String? visitorId;

  bool checkInSelected = true;

  bool checkOutSelected = false;

  bool flashlightOn = false;

  String? manualQR;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (qrscan)] action in ScanVisitorQR widget.
  ApiCallResponse? apiResultqtz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
