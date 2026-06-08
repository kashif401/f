import '/components/error_msg_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/picker_trigger/picker_trigger_widget.dart';
import 'meeting_room_filter_widget.dart' show MeetingRoomFilterWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingRoomFilterModel extends FlutterFlowModel<MeetingRoomFilterWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  DateTime? startTime;

  DateTime? endTime;

  int attendees = 1;

  bool showValidation = false;

  ///  State fields for stateful widgets in this page.

  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // State field(s) for DropDownlocation widget.
  String? dropDownlocationValue;
  FormFieldController<String>? dropDownlocationValueController;
  // Model for ErrorMsgText component.
  late ErrorMsgTextModel errorMsgTextModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // State field(s) for DropDownfloor widget.
  String? dropDownfloorValue;
  FormFieldController<String>? dropDownfloorValueController;
  // Model for ErrorMsgText component.
  late ErrorMsgTextModel errorMsgTextModel2;
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
  // Model for FormLabel.
  late FormLabelModel formLabelModel5;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel3;
  DateTime? datePicked3;
  // Model for FormLabel.
  late FormLabelModel formLabelModel6;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabelModel());
    errorMsgTextModel1 = createModel(context, () => ErrorMsgTextModel());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    errorMsgTextModel2 = createModel(context, () => ErrorMsgTextModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    pickerTriggerModel1 = createModel(context, () => PickerTriggerModel());
    formLabelModel4 = createModel(context, () => FormLabelModel());
    pickerTriggerModel2 = createModel(context, () => PickerTriggerModel());
    formLabelModel5 = createModel(context, () => FormLabelModel());
    pickerTriggerModel3 = createModel(context, () => PickerTriggerModel());
    formLabelModel6 = createModel(context, () => FormLabelModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    errorMsgTextModel1.dispose();
    formLabelModel2.dispose();
    errorMsgTextModel2.dispose();
    formLabelModel3.dispose();
    pickerTriggerModel1.dispose();
    formLabelModel4.dispose();
    pickerTriggerModel2.dispose();
    formLabelModel5.dispose();
    pickerTriggerModel3.dispose();
    formLabelModel6.dispose();
    buttonModel.dispose();
  }
}
