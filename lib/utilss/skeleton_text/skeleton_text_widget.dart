import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'skeleton_text_model.dart';
export 'skeleton_text_model.dart';

class SkeletonTextWidget extends StatefulWidget {
  const SkeletonTextWidget({
    super.key,
    double? width,
    double? height,
  })  : this.width = width ?? 120.0,
        this.height = height ?? 14.0;

  final double width;
  final double height;

  @override
  State<SkeletonTextWidget> createState() => _SkeletonTextWidgetState();
}

class _SkeletonTextWidgetState extends State<SkeletonTextWidget> {
  late SkeletonTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkeletonTextModel());
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
        120.0,
      ),
      height: valueOrDefault<double>(
        widget.height,
        14.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(4.0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
