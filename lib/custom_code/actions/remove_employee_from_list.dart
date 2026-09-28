// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> removeEmployeeFromList(
  List<dynamic>? employees,
  dynamic employee,
) async {
  if (employees == null || employees.isEmpty) {
    return [];
  }

  final updatedList = <dynamic>[];

  for (final item in employees) {
    if (item['LOGINID'] != null && employee['LOGINID'] != null) {
      if (item['LOGINID'].toString() != employee['LOGINID'].toString()) {
        updatedList.add(item);
      }
    } else {
      if (item['EMPLOYEE_NAME'].toString() !=
          employee['EMPLOYEE_NAME'].toString()) {
        updatedList.add(item);
      }
    }
  }

  return updatedList;
}
