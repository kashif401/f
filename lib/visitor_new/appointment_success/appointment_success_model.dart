import '/components/bottom_nav_widget.dart';
import '/components/button27_widget.dart';
import '/components/detail_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointment_success_widget.dart' show AppointmentSuccessWidget;
import 'package:flutter/material.dart';

class AppointmentSuccessModel
    extends FlutterFlowModel<AppointmentSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DetailRow.
  late DetailRowModel detailRowModel1;
  // Model for DetailRow.
  late DetailRowModel detailRowModel2;
  // Model for DetailRow.
  late DetailRowModel detailRowModel3;
  // Model for DetailRow.
  late DetailRowModel detailRowModel4;
  // Model for DetailRow.
  late DetailRowModel detailRowModel5;
  // Model for DetailRow.
  late DetailRowModel detailRowModel6;
  // Model for DetailRow.
  late DetailRowModel detailRowModel7;
  // Model for Button.
  late Button27Model buttonModel;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    detailRowModel1 = createModel(context, () => DetailRowModel());
    detailRowModel2 = createModel(context, () => DetailRowModel());
    detailRowModel3 = createModel(context, () => DetailRowModel());
    detailRowModel4 = createModel(context, () => DetailRowModel());
    detailRowModel5 = createModel(context, () => DetailRowModel());
    detailRowModel6 = createModel(context, () => DetailRowModel());
    detailRowModel7 = createModel(context, () => DetailRowModel());
    buttonModel = createModel(context, () => Button27Model());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    detailRowModel1.dispose();
    detailRowModel2.dispose();
    detailRowModel3.dispose();
    detailRowModel4.dispose();
    detailRowModel5.dispose();
    detailRowModel6.dispose();
    detailRowModel7.dispose();
    buttonModel.dispose();
    bottomNavModel.dispose();
  }
}
