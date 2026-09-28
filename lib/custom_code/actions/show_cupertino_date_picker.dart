// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

Future<DateTime?> showCupertinoDatePicker(
  BuildContext context,
  DateTime? initialDate,
) async {
  final now = DateTime.now();

  // --------------------------------------------------
  // TODAY - PAST DATE BLOCK
  // --------------------------------------------------

  final today = DateTime(
    now.year,
    now.month,
    now.day,
  );

  // --------------------------------------------------
  // INITIAL DATE
  // --------------------------------------------------

  DateTime pickerInitialDate;

  if (initialDate != null) {
    pickerInitialDate = DateTime(
      initialDate.year,
      initialDate.month,
      initialDate.day,
    );
  } else {
    pickerInitialDate = today;
  }

  // Past date ko today par set karo
  if (pickerInitialDate.isBefore(today)) {
    pickerInitialDate = today;
  }

  DateTime selectedDate = pickerInitialDate;

  // --------------------------------------------------
  // SHOW DATE PICKER
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
                    'Date',
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
                      // Final safety check
                      if (selectedDate.isBefore(today)) {
                        return;
                      }

                      Navigator.pop(
                        context,
                        selectedDate,
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
            // DATE PICKER
            // --------------------------------------------------

            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,

                // Past dates are not allowed
                minimumDate: today,

                // Existing / selected date
                initialDateTime: pickerInitialDate,

                // Date change
                onDateTimeChanged: (DateTime value) {
                  selectedDate = DateTime(
                    value.year,
                    value.month,
                    value.day,
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
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
