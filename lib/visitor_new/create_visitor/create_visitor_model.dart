import '/backend/api_requests/api_calls.dart';
import '/components/button27_widget.dart';
import '/components/header_widget.dart';
import '/components/text_field16_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_visitor_widget.dart' show CreateVisitorWidget;
import 'package:flutter/material.dart';

class CreateVisitorModel extends FlutterFlowModel<CreateVisitorWidget> {
  ///  Local state fields for this page.

  String? firstName;

  String? lastName;

  String? email;

  String? phoneNumber;

  String? companyName;

  ///  State fields for stateful widgets in this page.

  // Model for Header.
  late HeaderModel headerModel;
  // Model for TextField.
  late TextField16Model textFieldModel1;
  // Model for TextField.
  late TextField16Model textFieldModel2;
  // Model for TextField.
  late TextField16Model textFieldModel3;
  // Model for TextField.
  late TextField16Model textFieldModel4;
  // Model for TextField.
  late TextField16Model textFieldModel5;
  // Model for Button.
  late Button27Model buttonModel;
  // Stores action output result for [Backend Call - API (createVisitor)] action in Button widget.
  ApiCallResponse? apiResult1uc;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    textFieldModel1 = createModel(context, () => TextField16Model());
    textFieldModel2 = createModel(context, () => TextField16Model());
    textFieldModel3 = createModel(context, () => TextField16Model());
    textFieldModel4 = createModel(context, () => TextField16Model());
    textFieldModel5 = createModel(context, () => TextField16Model());
    buttonModel = createModel(context, () => Button27Model());
  }

  @override
  void dispose() {
    headerModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    textFieldModel5.dispose();
    buttonModel.dispose();
  }
}
