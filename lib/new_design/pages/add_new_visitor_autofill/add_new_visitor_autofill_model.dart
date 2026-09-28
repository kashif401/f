import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button12/button12_widget.dart';
import '/utilss/compact_form_field/compact_form_field_widget.dart';
import '/utilss/section_header3/section_header3_widget.dart';
import '/utilss/visitor_drop_down/visitor_drop_down_widget.dart';
import '/index.dart';
import 'add_new_visitor_autofill_widget.dart' show AddNewVisitorAutofillWidget;
import 'package:flutter/material.dart';

class AddNewVisitorAutofillModel
    extends FlutterFlowModel<AddNewVisitorAutofillWidget> {
  ///  Local state fields for this page.

  bool showFullNameError = false;

  bool showMobileError = false;

  bool showEmailError = false;

  bool showCompanyError = false;

  bool showPurposeError = false;

  bool showHostError = false;

  bool showVisitDateError = false;

  bool showArrivalTimeError = false;

  bool showDurationError = false;

  String? photoUrl;

  DateTime? selectedDate;

  DateTime? startTime;

  String? visitorName;

  String? mobileNumber;

  String? emailAddress;

  String? companyName;

  String? purposeOfVisit;

  String? hostName;

  String? expectedDuration;

  DateTime? endTime;

  bool includeVehicleDetails = false;

  dynamic phoneapiResponse;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (visitorsbyphone)] action in AddNewVisitorAutofill widget.
  ApiCallResponse? apiResultxuc;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in AddNewVisitorAutofill widget.
  dynamic decryptoutput;
  // Model for Button.
  late Button12Model buttonModel1;
  // Model for SectionHeader.
  late SectionHeader3Model sectionHeaderModel1;
  // Model for VisitorNAME.
  late CompactFormFieldModel visitorNAMEModel;
  // Model for MoBILE.
  late CompactFormFieldModel moBILEModel;
  // Model for EMAIL.
  late CompactFormFieldModel emailModel;
  // Model for SectionHeader.
  late SectionHeader3Model sectionHeaderModel2;
  // Model for COMPANY.
  late CompactFormFieldModel companyModel;
  // Model for PURPOSEDROP.
  late VisitorDropDownModel purposedropModel;
  // Stores action output result for [Custom Action - showCupertinoDatePicker] action in Column widget.
  DateTime? dateOutput;
  // Stores action output result for [Custom Action - showCupertinoTimePicker] action in Column widget.
  DateTime? starttimeOutputr;
  // Stores action output result for [Custom Action - showCupertinoEndTimePicker] action in Column widget.
  DateTime? endTimepiceroutput;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Button.
  late Button12Model buttonModel2;
  // Stores action output result for [Backend Call - API (visitors)] action in Button widget.
  ApiCallResponse? apiResultvga;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button12Model());
    sectionHeaderModel1 = createModel(context, () => SectionHeader3Model());
    visitorNAMEModel = createModel(context, () => CompactFormFieldModel());
    moBILEModel = createModel(context, () => CompactFormFieldModel());
    emailModel = createModel(context, () => CompactFormFieldModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeader3Model());
    companyModel = createModel(context, () => CompactFormFieldModel());
    purposedropModel = createModel(context, () => VisitorDropDownModel());
    buttonModel2 = createModel(context, () => Button12Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    sectionHeaderModel1.dispose();
    visitorNAMEModel.dispose();
    moBILEModel.dispose();
    emailModel.dispose();
    sectionHeaderModel2.dispose();
    companyModel.dispose();
    purposedropModel.dispose();
    buttonModel2.dispose();
  }
}
