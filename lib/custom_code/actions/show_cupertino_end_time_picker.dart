// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

Future<DateTime?> showCupertinoEndTimePicker(
  BuildContext context,
  DateTime? initialTime,
  DateTime? selectedDate,
  DateTime? startTime,
) async {
  final now = DateTime.now();

  // --------------------------------------------------
  // BOOKING DATE
  // --------------------------------------------------

  final bookingDate = selectedDate ?? now;

  final dateOnly = DateTime(
    bookingDate.year,
    bookingDate.month,
    bookingDate.day,
  );

  final todayOnly = DateTime(
    now.year,
    now.month,
    now.day,
  );

  final isToday = dateOnly == todayOnly;

  // --------------------------------------------------
  // MINIMUM END TIME
  // --------------------------------------------------

  DateTime minimumEndTime;

  if (startTime != null) {
    // End Time must be at least 30 minutes
    // after Start Time.

    final startDateTime = DateTime(
      dateOnly.year,
      dateOnly.month,
      dateOnly.day,
      startTime.hour,
      startTime.minute,
    );

    minimumEndTime = startDateTime.add(
      const Duration(minutes: 30),
    );
  } else if (isToday) {
    // If Start Time is not available and booking is today,
    // allow time from the next minute.

    final currentTime = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour,
      now.minute,
    );

    minimumEndTime = currentTime.add(
      const Duration(minutes: 1),
    );
  } else {
    // Future date:
    // 12:00 AM onwards.

    minimumEndTime = DateTime(
      dateOnly.year,
      dateOnly.month,
      dateOnly.day,
      0,
      0,
    );
  }

  // --------------------------------------------------
  // INITIAL END TIME
  // --------------------------------------------------

  DateTime pickerInitialTime;

  if (initialTime != null) {
    // Keep existing selected End Time.

    pickerInitialTime = DateTime(
      dateOnly.year,
      dateOnly.month,
      dateOnly.day,
      initialTime.hour,
      initialTime.minute,
    );

    // Existing End Time cannot be before minimum End Time.
    if (pickerInitialTime.isBefore(minimumEndTime)) {
      pickerInitialTime = minimumEndTime;
    }
  } else {
    // New End Time:
    // Start from minimum valid End Time.

    pickerInitialTime = minimumEndTime;
  }

  // --------------------------------------------------
  // SAFETY CHECK
  // --------------------------------------------------

  if (pickerInitialTime.isBefore(minimumEndTime)) {
    pickerInitialTime = minimumEndTime;
  }

  DateTime selectedTime = pickerInitialTime;

  // --------------------------------------------------
  // SHOW PICKER
  // --------------------------------------------------

  final result = await showCupertinoModalPopup<DateTime>(
    context: context,
    builder: (context) {
      return Container(
        height: 360,
        color: CupertinoColors.systemBackground,
        child: Column(
          children: [
            // --------------------------------------------------
            // HEADER
            // --------------------------------------------------

            SizedBox(
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: CupertinoColors.activeOrange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Text(
                    'End Time',
                    style: TextStyle(
                      fontSize: 18,
                      color: CupertinoColors.activeOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    onPressed: () {
                      // Do not allow End Time before
                      // Start Time + 30 minutes.

                      if (selectedTime.isBefore(minimumEndTime)) {
                        return;
                      }

                      Navigator.pop(
                        context,
                        selectedTime,
                      );
                    },
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        color: CupertinoColors.activeOrange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // --------------------------------------------------
            // TIME PICKER
            // --------------------------------------------------

            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,

                // AM / PM
                use24hFormat: false,

                // IMPORTANT:
                // Allow every minute.
                minuteInterval: 1,

                // Minimum allowed End Time.
                minimumDate: minimumEndTime,

                // Initial selected End Time.
                initialDateTime: pickerInitialTime,

                onDateTimeChanged: (DateTime value) {
                  selectedTime = DateTime(
                    dateOnly.year,
                    dateOnly.month,
                    dateOnly.day,
                    value.hour,
                    value.minute,
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );

  return result;
}
