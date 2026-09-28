import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/utils/button/button_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import '/utilss/form_label2/form_label2_widget.dart';
import 'add_vehecle_widget.dart' show AddVehecleWidget;
import 'package:flutter/material.dart';

class AddVehecleModel extends FlutterFlowModel<AddVehecleWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormLabel.
  late FormLabel2Model formLabelModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel2;
  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabel2Model());
    formLabelModel2 = createModel(context, () => FormLabel2Model());
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    formLabelModel2.dispose();
    textFieldModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
