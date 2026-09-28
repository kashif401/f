import '/components/button25_widget.dart';
import '/components/info_row3_widget.dart';
import '/components/schedule_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'visitor_check_out_widget.dart' show VisitorCheckOutWidget;
import 'package:flutter/material.dart';

class VisitorCheckOutModel extends FlutterFlowModel<VisitorCheckOutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for InfoRow.
  late InfoRow3Model infoRowModel1;
  // Model for InfoRow.
  late InfoRow3Model infoRowModel2;
  // Model for InfoRow.
  late InfoRow3Model infoRowModel3;
  // Model for InfoRow.
  late InfoRow3Model infoRowModel4;
  // Model for ScheduleRow.
  late ScheduleRowModel scheduleRowModel1;
  // Model for ScheduleRow.
  late ScheduleRowModel scheduleRowModel2;
  // Model for ScheduleRow.
  late ScheduleRowModel scheduleRowModel3;
  // Model for Button.
  late Button25Model buttonModel1;
  // Model for Button.
  late Button25Model buttonModel2;

  @override
  void initState(BuildContext context) {
    infoRowModel1 = createModel(context, () => InfoRow3Model());
    infoRowModel2 = createModel(context, () => InfoRow3Model());
    infoRowModel3 = createModel(context, () => InfoRow3Model());
    infoRowModel4 = createModel(context, () => InfoRow3Model());
    scheduleRowModel1 = createModel(context, () => ScheduleRowModel());
    scheduleRowModel2 = createModel(context, () => ScheduleRowModel());
    scheduleRowModel3 = createModel(context, () => ScheduleRowModel());
    buttonModel1 = createModel(context, () => Button25Model());
    buttonModel2 = createModel(context, () => Button25Model());
  }

  @override
  void dispose() {
    infoRowModel1.dispose();
    infoRowModel2.dispose();
    infoRowModel3.dispose();
    infoRowModel4.dispose();
    scheduleRowModel1.dispose();
    scheduleRowModel2.dispose();
    scheduleRowModel3.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
