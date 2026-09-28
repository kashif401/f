import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/amenity_tag/amenity_tag_widget.dart';
import 'room_card3_widget.dart' show RoomCard3Widget;
import 'package:flutter/material.dart';

class RoomCard3Model extends FlutterFlowModel<RoomCard3Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for AmenityTag.
  late AmenityTagModel amenityTagModel1;
  // Model for AmenityTag.
  late AmenityTagModel amenityTagModel2;
  // Model for AmenityTag.
  late AmenityTagModel amenityTagModel3;

  @override
  void initState(BuildContext context) {
    amenityTagModel1 = createModel(context, () => AmenityTagModel());
    amenityTagModel2 = createModel(context, () => AmenityTagModel());
    amenityTagModel3 = createModel(context, () => AmenityTagModel());
  }

  @override
  void dispose() {
    amenityTagModel1.dispose();
    amenityTagModel2.dispose();
    amenityTagModel3.dispose();
  }
}
