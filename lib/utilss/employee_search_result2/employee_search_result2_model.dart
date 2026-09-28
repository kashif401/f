import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button6/button6_widget.dart';
import 'employee_search_result2_widget.dart' show EmployeeSearchResult2Widget;
import 'package:flutter/material.dart';

class EmployeeSearchResult2Model
    extends FlutterFlowModel<EmployeeSearchResult2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
