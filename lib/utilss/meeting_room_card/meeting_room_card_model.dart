import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/amenity_tag2/amenity_tag2_widget.dart';
import 'meeting_room_card_widget.dart' show MeetingRoomCardWidget;
import 'package:flutter/material.dart';

class MeetingRoomCardModel extends FlutterFlowModel<MeetingRoomCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AmenityTag.
  late AmenityTag2Model amenityTagModel1;
  // Model for AmenityTag.
  late AmenityTag2Model amenityTagModel2;
  // Model for AmenityTag.
  late AmenityTag2Model amenityTagModel3;
  // Model for AmenityTag.
  late AmenityTag2Model amenityTagModel4;

  @override
  void initState(BuildContext context) {
    amenityTagModel1 = createModel(context, () => AmenityTag2Model());
    amenityTagModel2 = createModel(context, () => AmenityTag2Model());
    amenityTagModel3 = createModel(context, () => AmenityTag2Model());
    amenityTagModel4 = createModel(context, () => AmenityTag2Model());
  }

  @override
  void dispose() {
    amenityTagModel1.dispose();
    amenityTagModel2.dispose();
    amenityTagModel3.dispose();
    amenityTagModel4.dispose();
  }
}
