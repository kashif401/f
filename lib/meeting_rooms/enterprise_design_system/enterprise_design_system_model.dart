import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utilss/attendee_chip2/attendee_chip2_widget.dart';
import '/index.dart';
import 'enterprise_design_system_widget.dart' show EnterpriseDesignSystemWidget;
import 'package:flutter/material.dart';

class EnterpriseDesignSystemModel
    extends FlutterFlowModel<EnterpriseDesignSystemWidget> {
  ///  Local state fields for this page.

  bool loader = false;

  dynamic decryptData;

  dynamic searchemployes;

  List<dynamic> selectedEmployees = [];
  void addToSelectedEmployees(dynamic item) => selectedEmployees.add(item);
  void removeFromSelectedEmployees(dynamic item) =>
      selectedEmployees.remove(item);
  void removeAtIndexFromSelectedEmployees(int index) =>
      selectedEmployees.removeAt(index);
  void insertAtIndexInSelectedEmployees(int index, dynamic item) =>
      selectedEmployees.insert(index, item);
  void updateSelectedEmployeesAtIndex(int index, Function(dynamic) updateFn) =>
      selectedEmployees[index] = updateFn(selectedEmployees[index]);

  bool showEmployeeSearch = false;

  int? selectedRoomId;

  bool titleError = false;

  bool descriptionError = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (mstusersloginId)] action in EnterpriseDesignSystem widget.
  ApiCallResponse? apiResultt1yMstUserloginid;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in EnterpriseDesignSystem widget.
  dynamic decryptResponseFromServerOutputMstUser;
  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // State field(s) for TextFieldTitle widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // State field(s) for TextFielddesc widget.
  FocusNode? textFielddescFocusNode;
  TextEditingController? textFielddescTextController;
  String? Function(BuildContext, String?)? textFielddescTextControllerValidator;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // State field(s) for TextFieldseemploye widget.
  FocusNode? textFieldseemployeFocusNode;
  TextEditingController? textFieldseemployeTextController;
  String? Function(BuildContext, String?)?
      textFieldseemployeTextControllerValidator;
  // Stores action output result for [Backend Call - API (mstusers)] action in TextFieldseemploye widget.
  ApiCallResponse? apiResultt1yMstUser;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in TextFieldseemploye widget.
  dynamic decryptResponseFromServerOutputMstUserCopy;
  // Models for AttendeeChip.
  late FlutterFlowDynamicModels<AttendeeChip2Model> attendeeChipModels;
  // Stores action output result for [Custom Action - encryptMeetingRoomBookingPayload] action in Button widget.
  dynamic postencryptedmeetingRoom;
  // Stores action output result for [Backend Call - API (meeting rooms book)] action in Button widget.
  ApiCallResponse? apiResult5qziCopyCopy;
  // Stores action output result for [Custom Action - decryptMeetingRoomBookingResponse] action in Button widget.
  dynamic filtercompleteCopy;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabelModel());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    attendeeChipModels = FlutterFlowDynamicModels(() => AttendeeChip2Model());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    formLabelModel2.dispose();
    textFielddescFocusNode?.dispose();
    textFielddescTextController?.dispose();

    formLabelModel3.dispose();
    textFieldseemployeFocusNode?.dispose();
    textFieldseemployeTextController?.dispose();

    attendeeChipModels.dispose();
  }
}
