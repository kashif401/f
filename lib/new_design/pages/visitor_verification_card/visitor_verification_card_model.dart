import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button16/button16_widget.dart';
import '/utilss/info_row/info_row_widget.dart';
import '/utilss/status_badge46c4d420/status_badge46c4d420_widget.dart';
import 'visitor_verification_card_widget.dart'
    show VisitorVerificationCardWidget;
import 'package:flutter/material.dart';

class VisitorVerificationCardModel
    extends FlutterFlowModel<VisitorVerificationCardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatusBadge46c4d420.
  late StatusBadge46c4d420Model statusBadge46c4d420Model;
  // Model for InfoRow.
  late InfoRowModel infoRowModel1;
  // Model for InfoRow.
  late InfoRowModel infoRowModel2;
  // Model for InfoRow.
  late InfoRowModel infoRowModel3;
  // Model for InfoRow.
  late InfoRowModel infoRowModel4;
  // Model for InfoRow.
  late InfoRowModel infoRowModel5;
  // Model for Button.
  late Button16Model buttonModel1;
  // Model for Button.
  late Button16Model buttonModel2;

  @override
  void initState(BuildContext context) {
    statusBadge46c4d420Model =
        createModel(context, () => StatusBadge46c4d420Model());
    infoRowModel1 = createModel(context, () => InfoRowModel());
    infoRowModel2 = createModel(context, () => InfoRowModel());
    infoRowModel3 = createModel(context, () => InfoRowModel());
    infoRowModel4 = createModel(context, () => InfoRowModel());
    infoRowModel5 = createModel(context, () => InfoRowModel());
    buttonModel1 = createModel(context, () => Button16Model());
    buttonModel2 = createModel(context, () => Button16Model());
  }

  @override
  void dispose() {
    statusBadge46c4d420Model.dispose();
    infoRowModel1.dispose();
    infoRowModel2.dispose();
    infoRowModel3.dispose();
    infoRowModel4.dispose();
    infoRowModel5.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
