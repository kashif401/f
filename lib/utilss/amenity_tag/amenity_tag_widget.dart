import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'amenity_tag_model.dart';
export 'amenity_tag_model.dart';

class AmenityTagWidget extends StatefulWidget {
  const AmenityTagWidget({
    super.key,
    this.icon,
  });

  final Widget? icon;

  @override
  State<AmenityTagWidget> createState() => _AmenityTagWidgetState();
}

class _AmenityTagWidgetState extends State<AmenityTagWidget> {
  late AmenityTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmenityTagModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(14.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: widget.icon!,
        ),
      ),
    );
  }
}
