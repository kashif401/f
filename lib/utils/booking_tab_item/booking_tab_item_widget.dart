import '/flutter_flow/flutter_flow_util.dart';
import '/utils/button/button_widget.dart';
import 'package:flutter/material.dart';
import 'booking_tab_item_model.dart';
export 'booking_tab_item_model.dart';

class BookingTabItemWidget extends StatefulWidget {
  const BookingTabItemWidget({
    super.key,
    String? label,
    bool? selected,
  })  : this.label = label ?? 'Smart Spaces',
        this.selected = selected ?? true;

  final String label;
  final bool selected;

  @override
  State<BookingTabItemWidget> createState() => _BookingTabItemWidgetState();
}

class _BookingTabItemWidgetState extends State<BookingTabItemWidget> {
  late BookingTabItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingTabItemModel());
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
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
        child: Container(
          child: wrapWithModel(
            model: _model.buttonModel,
            updateCallback: () => safeSetState(() {}),
            child: ButtonWidget(
              content: valueOrDefault<String>(
                widget.label,
                'Smart Spaces',
              ),
              iconPresent: false,
              iconEndPresent: false,
              variant: 'ghost',
              size: 'medium',
              fullWidth: false,
              loading: false,
              disabled: false,
            ),
          ),
        ),
      ),
    );
  }
}
