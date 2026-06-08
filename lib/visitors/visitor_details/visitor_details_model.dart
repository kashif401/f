import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/index.dart';
import 'visitor_details_widget.dart' show VisitorDetailsWidget;
import 'package:flutter/material.dart';

class VisitorDetailsModel extends FlutterFlowModel<VisitorDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel4 = createModel(context, () => SectionHeaderModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    sectionHeaderModel2.dispose();
    sectionHeaderModel3.dispose();
    sectionHeaderModel4.dispose();
    buttonModel.dispose();
  }
}
