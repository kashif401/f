import '/components/bottom_nav_widget.dart';
import '/components/button27_widget.dart';
import '/components/detail_row2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointment_details_widget.dart' show AppointmentDetailsWidget;
import 'package:flutter/material.dart';

class AppointmentDetailsModel
    extends FlutterFlowModel<AppointmentDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DetailRow.
  late DetailRow2Model detailRowModel1;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel2;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel3;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel4;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel5;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel6;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel7;
  // Model for DetailRow.
  late DetailRow2Model detailRowModel8;
  // Model for Button.
  late Button27Model buttonModel1;
  // Model for Button.
  late Button27Model buttonModel2;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    detailRowModel1 = createModel(context, () => DetailRow2Model());
    detailRowModel2 = createModel(context, () => DetailRow2Model());
    detailRowModel3 = createModel(context, () => DetailRow2Model());
    detailRowModel4 = createModel(context, () => DetailRow2Model());
    detailRowModel5 = createModel(context, () => DetailRow2Model());
    detailRowModel6 = createModel(context, () => DetailRow2Model());
    detailRowModel7 = createModel(context, () => DetailRow2Model());
    detailRowModel8 = createModel(context, () => DetailRow2Model());
    buttonModel1 = createModel(context, () => Button27Model());
    buttonModel2 = createModel(context, () => Button27Model());
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
    detailRowModel8.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    bottomNavModel.dispose();
  }
}
