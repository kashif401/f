import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/action_button2/action_button2_widget.dart';
import '/index.dart';
import 'new_vistor_module_widget.dart' show NewVistorModuleWidget;
import 'package:flutter/material.dart';

class NewVistorModuleModel extends FlutterFlowModel<NewVistorModuleWidget> {
  ///  Local state fields for this page.

  bool otpSent = false;

  dynamic decryptResponse;

  bool showErrorPincode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ActionButton.
  late ActionButton2Model actionButtonModel1;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in ActionButton widget.
  dynamic encryptedResultoTP;
  // Stores action output result for [Backend Call - API (SendOTP)] action in ActionButton widget.
  ApiCallResponse? apiResult25p;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in ActionButton widget.
  dynamic decrytresponseVisitorOTP;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Model for ActionButton.
  late ActionButton2Model actionButtonModel2;
  // Stores action output result for [Custom Action - encryptPayloadForServer] action in ActionButton widget.
  dynamic encryptedResultverifyotp;
  // Stores action output result for [Backend Call - API (verifyotp)] action in ActionButton widget.
  ApiCallResponse? apiResult5qz;
  // Model for ActionButton.
  late ActionButton2Model actionButtonModel3;
  // Model for ActionButton.
  late ActionButton2Model actionButtonModel4;

  @override
  void initState(BuildContext context) {
    actionButtonModel1 = createModel(context, () => ActionButton2Model());
    pinCodeController = TextEditingController();
    actionButtonModel2 = createModel(context, () => ActionButton2Model());
    actionButtonModel3 = createModel(context, () => ActionButton2Model());
    actionButtonModel4 = createModel(context, () => ActionButton2Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    actionButtonModel1.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    actionButtonModel2.dispose();
    actionButtonModel3.dispose();
    actionButtonModel4.dispose();
  }
}
