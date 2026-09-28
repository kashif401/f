import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/button14/button14_widget.dart';
import '/index.dart';
import 'review_photo_widget.dart' show ReviewPhotoWidget;
import 'package:flutter/material.dart';

class ReviewPhotoModel extends FlutterFlowModel<ReviewPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button14Model buttonModel1;
  // Model for Button.
  late Button14Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button14Model());
    buttonModel2 = createModel(context, () => Button14Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
