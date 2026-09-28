import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'all_available_rooms_widget.dart' show AllAvailableRoomsWidget;
import 'package:flutter/material.dart';

class AllAvailableRoomsModel extends FlutterFlowModel<AllAvailableRoomsWidget> {
  ///  Local state fields for this page.

  bool loader = false;

  dynamic decryptData;

  dynamic searchemployes;

  List<dynamic> selectedEmployees = [];
  void addToSelectedEmployees(dynamic item) => selectedEmployees.add(item);
  void removeFromSelectedEmployees(dynamic item) =>
      selectedEmployees.remove(item);
  void removeAtIndexFromSelectedEmployees(int index) =>
      selectedEmployees.removeAt(index);
  void insertAtIndexInSelectedEmployees(int index, dynamic item) =>
      selectedEmployees.insert(index, item);
  void updateSelectedEmployeesAtIndex(int index, Function(dynamic) updateFn) =>
      selectedEmployees[index] = updateFn(selectedEmployees[index]);

  bool showEmployeeSearch = false;

  int? selectedRoomId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
