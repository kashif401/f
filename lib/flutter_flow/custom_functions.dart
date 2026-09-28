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
  return time?.add(const Duration(minutes: 30));
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

bool? hasTodayBookings(dynamic json) {
  if (json == null) {
    return false;
  }

  try {
    final bookings = json['data']['todaysBookings'];

    if (bookings is List && bookings.isNotEmpty) {
      return true;
    }

    return false;
  } catch (e) {
    return false;
  }
}

bool? hasUpcommingBookings(dynamic json) {
  if (json == null) {
    return false;
  }

  try {
    final bookings = json['data']['upcomingBookings'];

    if (bookings is List && bookings.isNotEmpty) {
      return true;
    }

    return false;
  } catch (e) {
    return false;
  }
}

String? getInitials(String name) {
  if (name.trim().isEmpty) {
    return "";
  }

  final parts = name.trim().split(RegExp(r'\s+'));

  if (parts.length == 1) {
    return parts.first.substring(0, 1).toUpperCase();
  }

  return (parts.first.substring(0, 1) + parts.last.substring(0, 1))
      .toUpperCase();
}

dynamic removeEmployee(
  dynamic employees,
  String employeeCode,
) {
  List<dynamic> removeEmployee(
    List<dynamic> employees,
    String employeeCode,
  ) {
    return employees.where((e) {
      return e['EMPLOYEE_CODE'].toString() != employeeCode;
    }).toList();
  }
}

bool? isLoggedInUser(
  dynamic employee,
  String loginId,
) {
  if (employee == null) {
    return false;
  }

  return employee['LOGINID']?.toString() == loginId;
}

bool? isOtpIncomplete(String otp) {
  return otp.trim().length != 6;
}
