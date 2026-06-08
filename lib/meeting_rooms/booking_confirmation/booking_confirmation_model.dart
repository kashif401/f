import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import '/utils/facility_chip/facility_chip_widget.dart';
import '/utils/form_label/form_label_widget.dart';
import '/index.dart';
import 'booking_confirmation_widget.dart' show BookingConfirmationWidget;
import 'package:flutter/material.dart';

class BookingConfirmationModel
    extends FlutterFlowModel<BookingConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FormLabel.
  late FormLabelModel formLabelModel;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel1;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel2;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel3;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel4;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel5;
  // Model for FacilityChip component.
  late FacilityChipModel facilityChipModel6;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    formLabelModel = createModel(context, () => FormLabelModel());
    facilityChipModel1 = createModel(context, () => FacilityChipModel());
    facilityChipModel2 = createModel(context, () => FacilityChipModel());
    facilityChipModel3 = createModel(context, () => FacilityChipModel());
    facilityChipModel4 = createModel(context, () => FacilityChipModel());
    facilityChipModel5 = createModel(context, () => FacilityChipModel());
    facilityChipModel6 = createModel(context, () => FacilityChipModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    formLabelModel.dispose();
    facilityChipModel1.dispose();
    facilityChipModel2.dispose();
    facilityChipModel3.dispose();
    facilityChipModel4.dispose();
    facilityChipModel5.dispose();
    facilityChipModel6.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
