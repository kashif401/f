import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'parking_slot_model.dart';
export 'parking_slot_model.dart';

class ParkingSlotWidget extends StatefulWidget {
  const ParkingSlotWidget({
    super.key,
    String? label,
    bool? isOccupied,
    bool? isSelected,
  })  : this.label = label ?? 'A-101',
        this.isOccupied = isOccupied ?? true,
        this.isSelected = isSelected ?? true;

  final String label;
  final bool isOccupied;
  final bool isSelected;

  @override
  State<ParkingSlotWidget> createState() => _ParkingSlotWidgetState();
}

class _ParkingSlotWidgetState extends State<ParkingSlotWidget> {
  late ParkingSlotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParkingSlotModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: () {
          if (widget.isOccupied) {
            return FlutterFlowTheme.of(context).surfaceVariant;
          } else if (widget.isSelected) {
            return FlutterFlowTheme.of(context).primaryContainer;
          } else {
            return FlutterFlowTheme.of(context).primaryBackground;
          }
        }(),
        borderRadius: BorderRadius.circular(4.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: () {
            if (widget.isOccupied) {
              return FlutterFlowTheme.of(context).alternate;
            } else if (widget.isSelected) {
              return FlutterFlowTheme.of(context).primary;
            } else {
              return FlutterFlowTheme.of(context).alternate;
            }
          }(),
          width: 1.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            valueOrDefault<String>(
              widget.label,
              'A-101',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: () {
                    if (widget.isOccupied) {
                      return FlutterFlowTheme.of(context).accent3;
                    } else if (widget.isSelected) {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryText;
                    }
                  }(),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
          Icon(
            Icons.directions_car_rounded,
            color: () {
              if (widget.isOccupied) {
                return FlutterFlowTheme.of(context).accent3;
              } else if (widget.isSelected) {
                return FlutterFlowTheme.of(context).primary;
              } else {
                return Colors.transparent;
              }
            }(),
            size: 20.0,
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
