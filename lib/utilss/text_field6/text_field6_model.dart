import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'text_field6_widget.dart' show TextField6Widget;
import 'package:flutter/material.dart';

class TextField6Model extends FlutterFlowModel<TextField6Widget> {
  ///  Local state fields for this component.

  List<dynamic> searchemployee = [];
  void addToSearchemployee(dynamic item) => searchemployee.add(item);
  void removeFromSearchemployee(dynamic item) => searchemployee.remove(item);
  void removeAtIndexFromSearchemployee(int index) =>
      searchemployee.removeAt(index);
  void insertAtIndexInSearchemployee(int index, dynamic item) =>
      searchemployee.insert(index, item);
  void updateSearchemployeeAtIndex(int index, Function(dynamic) updateFn) =>
      searchemployee[index] = updateFn(searchemployee[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;
  // Stores action output result for [Backend Call - API (mstusers)] action in Input widget.
  ApiCallResponse? apiResultt1yMstUser;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Input widget.
  dynamic decryptResponseFromServerOutputMstUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
