import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'amenity_tag2_model.dart';
export 'amenity_tag2_model.dart';

class AmenityTag2Widget extends StatefulWidget {
  const AmenityTag2Widget({
    super.key,
    this.icon,
  });

  final Widget? icon;

  @override
  State<AmenityTag2Widget> createState() => _AmenityTag2WidgetState();
}

class _AmenityTag2WidgetState extends State<AmenityTag2Widget> {
  late AmenityTag2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmenityTag2Model());
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
