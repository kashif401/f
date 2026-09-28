import '/backend/api_requests/api_calls.dart';
import '/components/button28_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_appointment_new_widget.dart' show CreateAppointmentNewWidget;
import 'package:flutter/material.dart';

class CreateAppointmentNewModel
    extends FlutterFlowModel<CreateAppointmentNewWidget> {
  ///  Local state fields for this page.

  String? meetingTo;

  String? location;

  String? purpose;

  String? visitorType;

  String? vehicleNumber;

  DateTime? startDate;

  DateTime? startTime;

  DateTime? endDate;

  DateTime? endTime;

  FFUploadedFile? visitorPhoto;

  List<String> meetingToOptions = [];
  void addToMeetingToOptions(String item) => meetingToOptions.add(item);
  void removeFromMeetingToOptions(String item) => meetingToOptions.remove(item);
  void removeAtIndexFromMeetingToOptions(int index) =>
      meetingToOptions.removeAt(index);
  void insertAtIndexInMeetingToOptions(int index, String item) =>
      meetingToOptions.insert(index, item);
  void updateMeetingToOptionsAtIndex(int index, Function(String) updateFn) =>
      meetingToOptions[index] = updateFn(meetingToOptions[index]);

  List<int> meetingToUserId = [];
  void addToMeetingToUserId(int item) => meetingToUserId.add(item);
  void removeFromMeetingToUserId(int item) => meetingToUserId.remove(item);
  void removeAtIndexFromMeetingToUserId(int index) =>
      meetingToUserId.removeAt(index);
  void insertAtIndexInMeetingToUserId(int index, int item) =>
      meetingToUserId.insert(index, item);
  void updateMeetingToUserIdAtIndex(int index, Function(int) updateFn) =>
      meetingToUserId[index] = updateFn(meetingToUserId[index]);

  int? selectedMeetingTouserid;

  List<String> locationToOption = [];
  void addToLocationToOption(String item) => locationToOption.add(item);
  void removeFromLocationToOption(String item) => locationToOption.remove(item);
  void removeAtIndexFromLocationToOption(int index) =>
      locationToOption.removeAt(index);
  void insertAtIndexInLocationToOption(int index, String item) =>
      locationToOption.insert(index, item);
  void updateLocationToOptionAtIndex(int index, Function(String) updateFn) =>
      locationToOption[index] = updateFn(locationToOption[index]);

  bool includeVehicleDetails = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (mstusers Visito)] action in CreateAppointmentNew widget.
  ApiCallResponse? apiResultt1yMstUser;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in CreateAppointmentNew widget.
  dynamic decryptResponseFromServerOutputMstUserCopy;
  // Stores action output result for [Backend Call - API (branches for visitormodule)] action in CreateAppointmentNew widget.
  ApiCallResponse? apiResultd6d;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in CreateAppointmentNew widget.
  dynamic decryptLocation;
  // Model for Button.
  late Button28Model buttonModel1;
  bool isDataUploading_captureVisitorPhotos = false;
  FFUploadedFile uploadedLocalFile_captureVisitorPhotos =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // State field(s) for Dropdown widget.
  String? dropdownValue3;
  FormFieldController<String>? dropdownValueController3;
  // State field(s) for Dropdown widget.
  String? dropdownValue4;
  FormFieldController<String>? dropdownValueController4;
  // Stores action output result for [Custom Action - showCupertinoDatePicker] action in Column widget.
  DateTime? dateOutput;
  // Stores action output result for [Custom Action - showCupertinoTimePicker] action in Column widget.
  DateTime? starttimeOutputr;
  // Stores action output result for [Custom Action - showCupertinoEndTimePicker] action in Column widget.
  DateTime? endTimepiceroutput;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Button.
  late Button28Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button28Model());
    buttonModel2 = createModel(context, () => Button28Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
