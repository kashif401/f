import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/checkbox/checkbox_widget.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/picker_trigger/picker_trigger_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import 'appoint_visitor_form_widget.dart' show AppointVisitorFormWidget;
import 'package:flutter/material.dart';

class AppointVisitorFormModel
    extends FlutterFlowModel<AppointVisitorFormWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // Model for TextField.
  late TextFieldModel textFieldModel3;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for FormLabel.
  late FormLabelModel formLabelModel4;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for FormLabel.
  late FormLabelModel formLabelModel5;
  // Model for TextField.
  late TextFieldModel textFieldModel4;
  // Model for FormLabel.
  late FormLabelModel formLabelModel6;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel7;
  // Model for PickerTrigger.
  late PickerTriggerModel pickerTriggerModel2;
  // Model for Checkbox.
  late CheckboxModel checkboxModel1;
  // Model for Checkbox.
  late CheckboxModel checkboxModel2;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    formLabelModel1 = createModel(context, () => FormLabelModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    textFieldModel3 = createModel(context, () => TextFieldModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    formLabelModel4 = createModel(context, () => FormLabelModel());
    formLabelModel5 = createModel(context, () => FormLabelModel());
    textFieldModel4 = createModel(context, () => TextFieldModel());
    formLabelModel6 = createModel(context, () => FormLabelModel());
    pickerTriggerModel1 = createModel(context, () => PickerTriggerModel());
    formLabelModel7 = createModel(context, () => FormLabelModel());
    pickerTriggerModel2 = createModel(context, () => PickerTriggerModel());
    checkboxModel1 = createModel(context, () => CheckboxModel());
    checkboxModel2 = createModel(context, () => CheckboxModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    formLabelModel1.dispose();
    textFieldModel1.dispose();
    formLabelModel2.dispose();
    textFieldModel2.dispose();
    formLabelModel3.dispose();
    textFieldModel3.dispose();
    sectionHeaderModel2.dispose();
    formLabelModel4.dispose();
    formLabelModel5.dispose();
    textFieldModel4.dispose();
    formLabelModel6.dispose();
    pickerTriggerModel1.dispose();
    formLabelModel7.dispose();
    pickerTriggerModel2.dispose();
    checkboxModel1.dispose();
    checkboxModel2.dispose();
    buttonModel.dispose();
  }
}
