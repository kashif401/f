import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'skeleton_text2_model.dart';
export 'skeleton_text2_model.dart';

class SkeletonText2Widget extends StatefulWidget {
  const SkeletonText2Widget({
    super.key,
    double? width,
    double? height,
  })  : this.width = width ?? 100.0,
        this.height = height ?? 14.0;

  final double width;
  final double height;

  @override
  State<SkeletonText2Widget> createState() => _SkeletonText2WidgetState();
}

class _SkeletonText2WidgetState extends State<SkeletonText2Widget> {
  late SkeletonText2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkeletonText2Model());
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
        widget.width,
        100.0,
      ),
      height: valueOrDefault<double>(
        widget.height,
        14.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).surfaceVariant,
        borderRadius: BorderRadius.circular(4.0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
