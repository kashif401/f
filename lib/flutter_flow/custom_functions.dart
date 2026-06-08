import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

List<dynamic> generateMonthDates(DateTime currentMonth) {
  List<dynamic> dates = [];

  DateTime now = DateTime.now();
  int startDay =
      (currentMonth.year == now.year && currentMonth.month == now.month)
          ? now.day
          : 1;

  DateTime firstDay = DateTime(
    currentMonth.year,
    currentMonth.month,
    startDay,
  );

  DateTime lastDay = DateTime(
    currentMonth.year,
    currentMonth.month + 1,
    0,
  );

  int totalDays = lastDay.day - startDay + 1;

  for (int i = 0; i < totalDays; i++) {
    DateTime date = firstDay.add(Duration(days: i));

    dates.add({
      "dayName": DateFormat('EEE').format(date),
      "dayNumber": date.day.toString(),
      "fullDate": date.toIso8601String(),
    });
  }

  return dates;
}

DateTime? addOneHour(DateTime? time) {
  return time?.add(Duration(hours: 1));
}

int updateAttendees(
  int currentValue,
  bool isIncrement,
) {
  if (isIncrement) {
    return currentValue + 1;
  } else {
    if (currentValue > 1) {
      return currentValue - 1;
    }
    return 1;
  }
}
