import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'text_field2_widget.dart' show TextField2Widget;
import 'package:flutter/material.dart';

class TextField2Model extends FlutterFlowModel<TextField2Widget> {
  ///  Local state fields for this component.

  dynamic locationapidatadec;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Inputserch widget.
  FocusNode? inputserchFocusNode;
  TextEditingController? inputserchTextController;
  String? Function(BuildContext, String?)? inputserchTextControllerValidator;
  // Stores action output result for [Backend Call - API (branches search)] action in Inputserch widget.
  ApiCallResponse? apiResultt1y;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Inputserch widget.
  dynamic decryptResponseFromServerOutputlo;
  // Stores action output result for [Backend Call - API (meetingroomsbranchdetails)] action in Inputserch widget.
  ApiCallResponse? apiResultt1yfloor;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Inputserch widget.
  dynamic decryptResponseFromServerOutputfloor;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputserchFocusNode?.dispose();
    inputserchTextController?.dispose();
  }
}
