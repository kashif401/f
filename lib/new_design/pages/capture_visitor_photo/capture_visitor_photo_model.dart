import '/flutter_flow/flutter_flow_util.dart';
import '/new_design/utils/button13/button13_widget.dart';
import '/new_design/utils/scanner_corner/scanner_corner_widget.dart';
import '/index.dart';
import 'capture_visitor_photo_widget.dart' show CaptureVisitorPhotoWidget;
import 'package:flutter/material.dart';

class CaptureVisitorPhotoModel
    extends FlutterFlowModel<CaptureVisitorPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ScannerCorner.
  late ScannerCornerModel scannerCornerModel1;
  // Model for ScannerCorner.
  late ScannerCornerModel scannerCornerModel2;
  // Model for ScannerCorner.
  late ScannerCornerModel scannerCornerModel3;
  // Model for ScannerCorner.
  late ScannerCornerModel scannerCornerModel4;
  // Model for Button.
  late Button13Model buttonModel1;
  bool isDataUploading_captureVisitorPhoto = false;
  FFUploadedFile uploadedLocalFile_captureVisitorPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Model for Button.
  late Button13Model buttonModel2;

  @override
  void initState(BuildContext context) {
    scannerCornerModel1 = createModel(context, () => ScannerCornerModel());
    scannerCornerModel2 = createModel(context, () => ScannerCornerModel());
    scannerCornerModel3 = createModel(context, () => ScannerCornerModel());
    scannerCornerModel4 = createModel(context, () => ScannerCornerModel());
    buttonModel1 = createModel(context, () => Button13Model());
    buttonModel2 = createModel(context, () => Button13Model());
  }

  @override
  void dispose() {
    scannerCornerModel1.dispose();
    scannerCornerModel2.dispose();
    scannerCornerModel3.dispose();
    scannerCornerModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
