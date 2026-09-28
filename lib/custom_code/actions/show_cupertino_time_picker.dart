// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:flutter/cupertino.dart';

Future<DateTime?> showCupertinoTimePicker(
  BuildContext context,
  DateTime? initialTime,
  DateTime? selectedDate,
) async {
  final now = DateTime.now();

  // --------------------------------------------------
  // BOOKING DATE
  // --------------------------------------------------

  final bookingDate = selectedDate ?? initialTime ?? now;

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
  // MINIMUM START TIME
  // --------------------------------------------------

  DateTime minimumTime;

  if (isToday) {
    // Today's booking:
    // Current time ke baad next 1-minute slot.

    final currentTime = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour,
      now.minute,
    );

    minimumTime = currentTime.add(
      const Duration(minutes: 1),
    );
  } else {
    // Future date:
    // 12:00 AM se allow.

    minimumTime = DateTime(
      dateOnly.year,
      dateOnly.month,
      dateOnly.day,
      0,
      0,
    );
  }

  // --------------------------------------------------
  // INITIAL TIME
  // --------------------------------------------------

  DateTime pickerInitialTime;

  if (initialTime != null && selectedDate != null) {
    // Existing selected time ko booking date ke saath combine karo.

    pickerInitialTime = DateTime(
      dateOnly.year,
      dateOnly.month,
      dateOnly.day,
      initialTime.hour,
      initialTime.minute,
    );

    if (pickerInitialTime.isBefore(minimumTime)) {
      pickerInitialTime = minimumTime;
    }
  } else {
    // New booking:
    // Minimum valid time se picker start karo.

    pickerInitialTime = minimumTime;
  }

  // --------------------------------------------------
  // SHOW PICKER
  // --------------------------------------------------

  DateTime selectedTime = pickerInitialTime;

  final result = await showCupertinoModalPopup<DateTime>(
    context: context,
    builder: (context) {
      return Container(
        height: 360,
        color: CupertinoColors.systemBackground,
        child: Column(
          children: [
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
                    'Start Time',
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
                      if (selectedTime.isBefore(minimumTime)) {
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
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,

                // AM / PM
                use24hFormat: false,

                // IMPORTANT:
                // 1-minute interval
                minuteInterval: 1,

                // Minimum allowed time
                minimumDate: minimumTime,

                // Initial selected time
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
