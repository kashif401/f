import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'location_search_widget.dart' show LocationSearchWidget;
import 'package:flutter/material.dart';

class LocationSearchModel extends FlutterFlowModel<LocationSearchWidget> {
  ///  Local state fields for this page.

  dynamic locationapidatadec;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (branches search)] action in TextField widget.
  ApiCallResponse? apiResultt1y;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in TextField widget.
  dynamic decryptResponseFromServerOutputlo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
