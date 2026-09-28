import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scanner_corner_model.dart';
export 'scanner_corner_model.dart';

class ScannerCornerWidget extends StatefulWidget {
  const ScannerCornerWidget({
    super.key,
    String? radius,
    String? side,
  })  : this.radius = radius ?? 'top_left',
        this.side = side ?? 'left';

  final String radius;
  final String side;

  @override
  State<ScannerCornerWidget> createState() => _ScannerCornerWidgetState();
}

class _ScannerCornerWidgetState extends State<ScannerCornerWidget> {
  late ScannerCornerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScannerCornerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
    );
  }
}
