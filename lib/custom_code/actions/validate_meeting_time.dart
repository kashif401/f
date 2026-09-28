// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/EncryptionService.dart';

Future<String> validateMeetingTime(
  DateTime selectedDate,
  DateTime startTime,
  DateTime endTime,
) async {
  final now = DateTime.now();

  // Remove time part from dates
  final today = DateTime(now.year, now.month, now.day);
  final selectedDay = DateTime(
    selectedDate.year,
    selectedDate.month,
    selectedDate.day,
  );

  // 1. Selected date cannot be in the past
  if (selectedDay.isBefore(today)) {
    return 'DATE_IN_PAST';
  }

  // 2. End time must be greater than start time
  final start = DateTime(
    selectedDay.year,
    selectedDay.month,
    selectedDay.day,
    startTime.hour,
    startTime.minute,
  );

  final end = DateTime(
    selectedDay.year,
    selectedDay.month,
    selectedDay.day,
    endTime.hour,
    endTime.minute,
  );

  if (!end.isAfter(start)) {
    return 'INVALID_END_TIME';
  }

  // 3. If selected date is today,
  // start time must be in the future
  if (selectedDay.isAtSameMomentAs(today)) {
    if (!start.isAfter(now)) {
      return 'START_TIME_IN_PAST';
    }
  }

  // 4. Everything is valid
  return 'VALID';
}
