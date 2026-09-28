import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button17/button17_widget.dart';
import '/utilss/info_row2/info_row2_widget.dart';
import '/utilss/success_header/success_header_widget.dart';
import 'check_in_success_widget.dart' show CheckInSuccessWidget;
import 'package:flutter/material.dart';

class CheckInSuccessModel extends FlutterFlowModel<CheckInSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SuccessHeader.
  late SuccessHeaderModel successHeaderModel;
  // Model for InfoRow.
  late InfoRow2Model infoRowModel1;
  // Model for InfoRow.
  late InfoRow2Model infoRowModel2;
  // Model for InfoRow.
  late InfoRow2Model infoRowModel3;
  // Model for InfoRow.
  late InfoRow2Model infoRowModel4;
  // Model for Button.
  late Button17Model buttonModel1;
  // Model for Button.
  late Button17Model buttonModel2;

  @override
  void initState(BuildContext context) {
    successHeaderModel = createModel(context, () => SuccessHeaderModel());
    infoRowModel1 = createModel(context, () => InfoRow2Model());
    infoRowModel2 = createModel(context, () => InfoRow2Model());
    infoRowModel3 = createModel(context, () => InfoRow2Model());
    infoRowModel4 = createModel(context, () => InfoRow2Model());
    buttonModel1 = createModel(context, () => Button17Model());
    buttonModel2 = createModel(context, () => Button17Model());
  }

  @override
  void dispose() {
    successHeaderModel.dispose();
    infoRowModel1.dispose();
    infoRowModel2.dispose();
    infoRowModel3.dispose();
    infoRowModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
