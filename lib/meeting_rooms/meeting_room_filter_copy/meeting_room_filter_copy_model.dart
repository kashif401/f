import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/picker_trigger/picker_trigger_widget.dart';
import '/utilss/skeleton_circle/skeleton_circle_widget.dart';
import '/utilss/skeleton_text2/skeleton_text2_widget.dart';
import '/utilss/text_field3/text_field3_widget.dart';
import '/index.dart';
import 'meeting_room_filter_copy_widget.dart' show MeetingRoomFilterCopyWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingRoomFilterCopyModel
    extends FlutterFlowModel<MeetingRoomFilterCopyWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  DateTime? startTime;

  DateTime? endTime;

  int attendees = 1;

  bool showValidation = false;

  dynamic declocation;

  String? selectedLocation;

  dynamic decryptResponseBranchCode;

  bool loader = false;

  dynamic afterSubmitmeetingRoomdata;

  bool showFloorError = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (branches search branchcode)] action in MeetingRoomFilterCopy widget.
  ApiCallResponse? apiResultt1y;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in MeetingRoomFilterCopy widget.
  dynamic decryptResponseFromServerOutputbranchcode;
  // Stores action output result for [Backend Call - API (meetingroomsbranchdetails)] action in MeetingRoomFilterCopy widget.
  ApiCallResponse? apiResultt1yfloor;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in MeetingRoomFilterCopy widget.
  dynamic decryptResponseFromServerOutputfloor;
  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // Model for TextField.
  late TextField3Model textFieldModel;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // State field(s) for DropDownfloor widget.
  String? dropDownfloorValue;
  FormFieldController<String>? dropDownfloorValueController;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel1;
  DateTime? datePicked1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel4;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel2;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - validateMeetingTime] action in PickerTrigger widget.
  String? validateMeetingTime;
  // Model for FormLabel.
  late FormLabelModel formLabelModel5;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel3;
  DateTime? datePicked3;
  // Model for FormLabel.
  late FormLabelModel formLabelModel6;
  // Stores action output result for [Backend Call - API (meetingroomsbranchdetails)] action in Button widget.
  ApiCallResponse? apiResultt1yMeetingRoomavlaible;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Button widget.
  dynamic decryptResponseFromServerOutputroomAvlable;
  // Stores action output result for [Custom Action - getMeetingRoombyFloor] action in Button widget.
  List<dynamic>? getMeetingRoombyFlooroutput;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel1;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel2;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel1;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel2;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel3;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel4;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel5;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel6;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel3;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel7;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel4;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel8;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel5;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel9;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel6;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel10;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel7;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel11;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel12;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel13;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel8;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel9;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel10;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel11;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel14;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel15;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel16;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel17;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel12;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel18;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel19;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel13;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel20;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel21;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabelModel());
    textFieldModel = createModel(context, () => TextField3Model());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    pickerTriggerModel1 = createModel(context, () => PickerTriggerModel());
    formLabelModel4 = createModel(context, () => FormLabelModel());
    pickerTriggerModel2 = createModel(context, () => PickerTriggerModel());
    formLabelModel5 = createModel(context, () => FormLabelModel());
    pickerTriggerModel3 = createModel(context, () => PickerTriggerModel());
    formLabelModel6 = createModel(context, () => FormLabelModel());
    skeletonTextModel1 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel2 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel1 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel2 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel3 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel4 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel5 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel6 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel3 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel7 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel4 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel8 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel5 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel9 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel6 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel10 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel7 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel11 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel12 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel13 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel8 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel9 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel10 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel11 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel14 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel15 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel16 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel17 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel12 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel18 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel19 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel13 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel20 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel21 = createModel(context, () => SkeletonText2Model());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    textFieldModel.dispose();
    formLabelModel2.dispose();
    formLabelModel3.dispose();
    pickerTriggerModel1.dispose();
    formLabelModel4.dispose();
    pickerTriggerModel2.dispose();
    formLabelModel5.dispose();
    pickerTriggerModel3.dispose();
    formLabelModel6.dispose();
    skeletonTextModel1.dispose();
    skeletonTextModel2.dispose();
    skeletonCircleModel1.dispose();
    skeletonCircleModel2.dispose();
    skeletonTextModel3.dispose();
    skeletonTextModel4.dispose();
    skeletonTextModel5.dispose();
    skeletonTextModel6.dispose();
    skeletonCircleModel3.dispose();
    skeletonTextModel7.dispose();
    skeletonCircleModel4.dispose();
    skeletonTextModel8.dispose();
    skeletonCircleModel5.dispose();
    skeletonTextModel9.dispose();
    skeletonCircleModel6.dispose();
    skeletonTextModel10.dispose();
    skeletonCircleModel7.dispose();
    skeletonTextModel11.dispose();
    skeletonTextModel12.dispose();
    skeletonTextModel13.dispose();
    skeletonCircleModel8.dispose();
    skeletonCircleModel9.dispose();
    skeletonCircleModel10.dispose();
    skeletonCircleModel11.dispose();
    skeletonTextModel14.dispose();
    skeletonTextModel15.dispose();
    skeletonTextModel16.dispose();
    skeletonTextModel17.dispose();
    skeletonCircleModel12.dispose();
    skeletonTextModel18.dispose();
    skeletonTextModel19.dispose();
    skeletonCircleModel13.dispose();
    skeletonTextModel20.dispose();
    skeletonTextModel21.dispose();
  }
}
