import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/skeleton_circle/skeleton_circle_widget.dart';
import '/utilss/skeleton_text2/skeleton_text2_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_shimmer_model.dart';
export 'dashboard_shimmer_model.dart';

class DashboardShimmerWidget extends StatefulWidget {
  const DashboardShimmerWidget({super.key});

  static String routeName = 'DashboardShimmer';
  static String routePath = '/dashboardShimmer';

  @override
  State<DashboardShimmerWidget> createState() => _DashboardShimmerWidgetState();
}

class _DashboardShimmerWidgetState extends State<DashboardShimmerWidget> {
  late DashboardShimmerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardShimmerModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 14.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 100.0,
                                        height: 14.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 180.0,
                                    height: 26.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 180.0,
                                        height: 26.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                              wrapWithModel(
                                model: _model.skeletonCircleModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: SkeletonCircleWidget(
                                  size: 48.0,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.skeletonCircleModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonCircleWidget(
                                        size: 50.0,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 140.0,
                                            height: 16.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 140.0,
                                                height: 16.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 200.0,
                                            height: 12.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 200.0,
                                                height: 12.0,
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                    Container(
                                      width: 80.0,
                                      height: 32.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .surfaceVariant,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 120.0,
                                    height: 20.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 120.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60.0,
                                    height: 14.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 60.0,
                                        height: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 48.0,
                                                ),
                                              ),
                                              Container(
                                                width: 40.0,
                                                height: 12.0,
                                                child: wrapWithModel(
                                                  model:
                                                      _model.skeletonTextModel7,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonText2Widget(
                                                    width: 40.0,
                                                    height: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 48.0,
                                                ),
                                              ),
                                              Container(
                                                width: 40.0,
                                                height: 12.0,
                                                child: wrapWithModel(
                                                  model:
                                                      _model.skeletonTextModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonText2Widget(
                                                    width: 40.0,
                                                    height: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 48.0,
                                                ),
                                              ),
                                              Container(
                                                width: 40.0,
                                                height: 12.0,
                                                child: wrapWithModel(
                                                  model:
                                                      _model.skeletonTextModel9,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonText2Widget(
                                                    width: 40.0,
                                                    height: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 48.0,
                                                ),
                                              ),
                                              Container(
                                                width: 40.0,
                                                height: 12.0,
                                                child: wrapWithModel(
                                                  model: _model
                                                      .skeletonTextModel10,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonText2Widget(
                                                    width: 40.0,
                                                    height: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 60,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.skeletonCircleModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SkeletonCircleWidget(
                                                  size: 40.0,
                                                ),
                                              ),
                                              Container(
                                                width: 20.0,
                                                height: 16.0,
                                                child: wrapWithModel(
                                                  model: _model
                                                      .skeletonTextModel11,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonText2Widget(
                                                    width: 20.0,
                                                    height: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 18.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel12,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 100.0,
                                                height: 18.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 140.0,
                                            height: 12.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel13,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 140.0,
                                                height: 12.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .skeletonCircleModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonCircleWidget(
                                                    size: 24.0,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .skeletonCircleModel9,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonCircleWidget(
                                                    size: 24.0,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .skeletonCircleModel10,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonCircleWidget(
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 40,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          wrapWithModel(
                                            model: _model.skeletonCircleModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SkeletonCircleWidget(
                                              size: 40.0,
                                            ),
                                          ),
                                          Container(
                                            width: 60.0,
                                            height: 18.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel14,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 60.0,
                                                height: 18.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 80.0,
                                            height: 12.0,
                                            child: wrapWithModel(
                                              model: _model.skeletonTextModel15,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SkeletonText2Widget(
                                                width: 80.0,
                                                height: 12.0,
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 140.0,
                                    height: 20.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel16,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 140.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 20.0,
                                    height: 20.0,
                                    child: wrapWithModel(
                                      model: _model.skeletonTextModel17,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SkeletonText2Widget(
                                        width: 20.0,
                                        height: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .skeletonCircleModel12,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonCircleWidget(
                                                    size: 40.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: 120.0,
                                                        height: 12.0,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .skeletonTextModel18,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonText2Widget(
                                                            width: 120.0,
                                                            height: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 80.0,
                                                        height: 10.0,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .skeletonTextModel19,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonText2Widget(
                                                            width: 80.0,
                                                            height: 10.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      child: Container(
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .skeletonCircleModel13,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: SkeletonCircleWidget(
                                                    size: 40.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: 150.0,
                                                        height: 12.0,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .skeletonTextModel20,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonText2Widget(
                                                            width: 150.0,
                                                            height: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 90.0,
                                                        height: 10.0,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .skeletonTextModel21,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              SkeletonText2Widget(
                                                            width: 90.0,
                                                            height: 10.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      height: 20.0,
                                      child: wrapWithModel(
                                        model: _model.skeletonTextModel22,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SkeletonText2Widget(
                                          width: 100.0,
                                          height: 20.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .surfaceVariant,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).background40,
                shape: BoxShape.rectangle,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: 'lazy loader image',
                        child: Image.asset(
                          key: ValueKey('LazyLoaderImg'),
                          'assets/images/icons8-spinner.gif',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: AutoSizeText(
                          'Loading ...',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.mulish(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF133359),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
