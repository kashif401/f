import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/input_field2/input_field2_widget.dart';
import 'add_visitor_widget.dart' show AddVisitorWidget;
import 'package:flutter/material.dart';

class AddVisitorModel extends FlutterFlowModel<AddVisitorWidget> {
  ///  Local state fields for this page.

  String? visitorNameError = '\"\"';

  String? emailError = '\"\"';

  String? mobileError = '\"\"';

  String? companyError = '\"\"';

  bool nameError = false;

  bool emailErrorbo = false;

  bool mobileErrorbo = false;

  bool companyerrorbo = false;

  ///  State fields for stateful widgets in this page.

  // Model for InputField.
  late InputField2Model inputFieldModel1;
  // Model for InputField.
  late InputField2Model inputFieldModel2;
  // Model for InputField.
  late InputField2Model inputFieldModel3;
  // Model for InputField.
  late InputField2Model inputFieldModel4;

  @override
  void initState(BuildContext context) {
    inputFieldModel1 = createModel(context, () => InputField2Model());
    inputFieldModel2 = createModel(context, () => InputField2Model());
    inputFieldModel3 = createModel(context, () => InputField2Model());
    inputFieldModel4 = createModel(context, () => InputField2Model());
  }

  @override
  void dispose() {
    inputFieldModel1.dispose();
    inputFieldModel2.dispose();
    inputFieldModel3.dispose();
    inputFieldModel4.dispose();
  }
}
