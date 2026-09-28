import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'testchck_model.dart';
export 'testchck_model.dart';

class TestchckWidget extends StatefulWidget {
  const TestchckWidget({super.key});

  static String routeName = 'testchck';
  static String routePath = '/testchck';

  @override
  State<TestchckWidget> createState() => _TestchckWidgetState();
}

class _TestchckWidgetState extends State<TestchckWidget> {
  late TestchckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestchckModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
