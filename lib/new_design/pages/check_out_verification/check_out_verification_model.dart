import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button18/button18_widget.dart';
import '/utilss/status_badge/status_badge_widget.dart';
import '/utilss/visitor_info_row/visitor_info_row_widget.dart';
import 'check_out_verification_widget.dart' show CheckOutVerificationWidget;
import 'package:flutter/material.dart';

class CheckOutVerificationModel
    extends FlutterFlowModel<CheckOutVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatusBadge.
  late StatusBadgeModel statusBadgeModel;
  // Model for VisitorInfoRow.
  late VisitorInfoRowModel visitorInfoRowModel1;
  // Model for VisitorInfoRow.
  late VisitorInfoRowModel visitorInfoRowModel2;
  // Model for VisitorInfoRow.
  late VisitorInfoRowModel visitorInfoRowModel3;
  // Model for VisitorInfoRow.
  late VisitorInfoRowModel visitorInfoRowModel4;
  // Model for Button.
  late Button18Model buttonModel1;
  // Model for Button.
  late Button18Model buttonModel2;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadgeModel());
    visitorInfoRowModel1 = createModel(context, () => VisitorInfoRowModel());
    visitorInfoRowModel2 = createModel(context, () => VisitorInfoRowModel());
    visitorInfoRowModel3 = createModel(context, () => VisitorInfoRowModel());
    visitorInfoRowModel4 = createModel(context, () => VisitorInfoRowModel());
    buttonModel1 = createModel(context, () => Button18Model());
    buttonModel2 = createModel(context, () => Button18Model());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
    visitorInfoRowModel1.dispose();
    visitorInfoRowModel2.dispose();
    visitorInfoRowModel3.dispose();
    visitorInfoRowModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
