import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/skeleton_circle/skeleton_circle_widget.dart';
import '/utilss/skeleton_text2/skeleton_text2_widget.dart';
import '/index.dart';
import 'activity_home_screen2_copy_widget.dart'
    show ActivityHomeScreen2CopyWidget;
import 'package:flutter/material.dart';

class ActivityHomeScreen2CopyModel
    extends FlutterFlowModel<ActivityHomeScreen2CopyWidget> {
  ///  Local state fields for this page.

  dynamic roomdecreypt;

  bool hasTodaysBookings = true;

  bool loader = false;

  bool hasUpcomingBookings = true;

  dynamic decRespoonseApi;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (meetingroomsbookings)] action in ActivityHomeScreen2Copy widget.
  ApiCallResponse? apiResult1vi;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in ActivityHomeScreen2Copy widget.
  dynamic meetingRoomSbookingsDecrypt;
  // Stores action output result for [Backend Call - API (profile)] action in ActivityHomeScreen2Copy widget.
  ApiCallResponse? apiResultn0a;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in ActivityHomeScreen2Copy widget.
  dynamic decryptReponseProfile;
  // Stores action output result for [Backend Call - API (logout)] action in Icon widget.
  ApiCallResponse? apiResultwu6;
  // Stores action output result for [Custom Action - decryptResponseFromServer] action in Icon widget.
  dynamic decryptresponseLogout;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel1;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel2;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel1;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel2;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel3;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel4;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel5;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel6;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel3;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel7;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel4;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel8;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel5;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel9;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel6;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel10;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel7;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel11;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel12;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel13;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel8;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel9;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel10;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel11;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel14;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel15;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel16;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel17;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel12;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel18;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel19;
  // Model for SkeletonCircle.
  late SkeletonCircleModel skeletonCircleModel13;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel20;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel21;
  // Model for SkeletonText.
  late SkeletonText2Model skeletonTextModel22;

  @override
  void initState(BuildContext context) {
    skeletonTextModel1 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel2 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel1 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel2 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel3 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel4 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel5 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel6 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel3 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel7 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel4 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel8 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel5 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel9 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel6 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel10 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel7 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel11 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel12 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel13 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel8 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel9 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel10 = createModel(context, () => SkeletonCircleModel());
    skeletonCircleModel11 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel14 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel15 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel16 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel17 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel12 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel18 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel19 = createModel(context, () => SkeletonText2Model());
    skeletonCircleModel13 = createModel(context, () => SkeletonCircleModel());
    skeletonTextModel20 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel21 = createModel(context, () => SkeletonText2Model());
    skeletonTextModel22 = createModel(context, () => SkeletonText2Model());
  }

  @override
  void dispose() {
    skeletonTextModel1.dispose();
    skeletonTextModel2.dispose();
    skeletonCircleModel1.dispose();
    skeletonCircleModel2.dispose();
    skeletonTextModel3.dispose();
    skeletonTextModel4.dispose();
    skeletonTextModel5.dispose();
    skeletonTextModel6.dispose();
    skeletonCircleModel3.dispose();
    skeletonTextModel7.dispose();
    skeletonCircleModel4.dispose();
    skeletonTextModel8.dispose();
    skeletonCircleModel5.dispose();
    skeletonTextModel9.dispose();
    skeletonCircleModel6.dispose();
    skeletonTextModel10.dispose();
    skeletonCircleModel7.dispose();
    skeletonTextModel11.dispose();
    skeletonTextModel12.dispose();
    skeletonTextModel13.dispose();
    skeletonCircleModel8.dispose();
    skeletonCircleModel9.dispose();
    skeletonCircleModel10.dispose();
    skeletonCircleModel11.dispose();
    skeletonTextModel14.dispose();
    skeletonTextModel15.dispose();
    skeletonTextModel16.dispose();
    skeletonTextModel17.dispose();
    skeletonCircleModel12.dispose();
    skeletonTextModel18.dispose();
    skeletonTextModel19.dispose();
    skeletonCircleModel13.dispose();
    skeletonTextModel20.dispose();
    skeletonTextModel21.dispose();
    skeletonTextModel22.dispose();
  }
}
