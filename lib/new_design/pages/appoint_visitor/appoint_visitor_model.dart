import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/form_label/form_label_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import '/index.dart';
import 'appoint_visitor_widget.dart' show AppointVisitorWidget;
import 'package:flutter/material.dart';

class AppointVisitorModel extends FlutterFlowModel<AppointVisitorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for FormLabel.
  late FormLabelModel formLabelModel4;
  // Model for TextField.
  late TextFieldModel textFieldModel3;
  // Model for FormLabel.
  late FormLabelModel formLabelModel5;
  // Model for TextField.
  late TextFieldModel textFieldModel4;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for FormLabel.
  late FormLabelModel formLabelModel6;
  // Model for TextField.
  late TextFieldModel textFieldModel5;
  // Model for FormLabel.
  late FormLabelModel formLabelModel7;
  // Model for TextField.
  late TextFieldModel textFieldModel6;
  // Model for FormLabel.
  late FormLabelModel formLabelModel8;
  // Model for TextField.
  late TextFieldModel textFieldModel7;
  // Model for FormLabel.
  late FormLabelModel formLabelModel9;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    formLabelModel1 = createModel(context, () => FormLabelModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    formLabelModel4 = createModel(context, () => FormLabelModel());
    textFieldModel3 = createModel(context, () => TextFieldModel());
    formLabelModel5 = createModel(context, () => FormLabelModel());
    textFieldModel4 = createModel(context, () => TextFieldModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    formLabelModel6 = createModel(context, () => FormLabelModel());
    textFieldModel5 = createModel(context, () => TextFieldModel());
    formLabelModel7 = createModel(context, () => FormLabelModel());
    textFieldModel6 = createModel(context, () => TextFieldModel());
    formLabelModel8 = createModel(context, () => FormLabelModel());
    textFieldModel7 = createModel(context, () => TextFieldModel());
    formLabelModel9 = createModel(context, () => FormLabelModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    formLabelModel1.dispose();
    sectionHeaderModel2.dispose();
    formLabelModel2.dispose();
    textFieldModel1.dispose();
    formLabelModel3.dispose();
    textFieldModel2.dispose();
    formLabelModel4.dispose();
    textFieldModel3.dispose();
    formLabelModel5.dispose();
    textFieldModel4.dispose();
    sectionHeaderModel3.dispose();
    formLabelModel6.dispose();
    textFieldModel5.dispose();
    formLabelModel7.dispose();
    textFieldModel6.dispose();
    formLabelModel8.dispose();
    textFieldModel7.dispose();
    formLabelModel9.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
