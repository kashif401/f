import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field9/text_field9_widget.dart';
import 'compact_form_field_copy_widget.dart' show CompactFormFieldCopyWidget;
import 'package:flutter/material.dart';

class CompactFormFieldCopyModel
    extends FlutterFlowModel<CompactFormFieldCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField9Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField9Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
