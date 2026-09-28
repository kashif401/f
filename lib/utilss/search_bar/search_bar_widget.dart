import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilss/text_field6/text_field6_widget.dart';
import 'package:flutter/material.dart';
import 'search_bar_model.dart';
export 'search_bar_model.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
    String? hint,
  }) : this.hint = hint ?? 'Search by room name or amenity';

  final String hint;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late SearchBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(14.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 22.0,
              ),
              Expanded(
                flex: 1,
                child: wrapWithModel(
                  model: _model.textFieldModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TextField6Widget(
                    label: '',
                    labelPresent: false,
                    helper: '',
                    helperPresent: false,
                    leadingIconPresent: false,
                    trailingIconPresent: false,
                    hint: valueOrDefault<String>(
                      widget.hint,
                      'Search by room name or amenity',
                    ),
                    value: '',
                    onChange: '',
                    onSubmit: '',
                    variant: 'ghost',
                    error: false,
                  ),
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
