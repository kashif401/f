import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button4/button4_widget.dart';
import 'employee_search_result_widget.dart' show EmployeeSearchResultWidget;
import 'package:flutter/material.dart';

class EmployeeSearchResultModel
    extends FlutterFlowModel<EmployeeSearchResultWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button4Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
