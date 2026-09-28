import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'skeleton_circle_model.dart';
export 'skeleton_circle_model.dart';

class SkeletonCircleWidget extends StatefulWidget {
  const SkeletonCircleWidget({
    super.key,
    double? size,
  }) : this.size = size ?? 48.0;

  final double size;

  @override
  State<SkeletonCircleWidget> createState() => _SkeletonCircleWidgetState();
}

class _SkeletonCircleWidgetState extends State<SkeletonCircleWidget> {
  late SkeletonCircleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkeletonCircleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: valueOrDefault<double>(
        widget.size,
        48.0,
      ),
      height: valueOrDefault<double>(
        widget.size,
        48.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).surfaceVariant,
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
