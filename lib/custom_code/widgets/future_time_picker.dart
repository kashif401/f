// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

class FutureTimePicker extends StatefulWidget {
  const FutureTimePicker({
    super.key,
    this.width,
    this.height,
    required this.selectedDate,
    this.onTimeSelected,
  });

  final double? width;
  final double? height;
  final DateTime selectedDate;
  final Future Function(DateTime selectedTime)? onTimeSelected;

  @override
  State<FutureTimePicker> createState() => _FutureTimePickerState();
}

class _FutureTimePickerState extends State<FutureTimePicker> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: InkWell(
        onTap: () => _showTimePicker(context),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            _formatTime(widget.selectedDate),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour == 0
        ? 12
        : dateTime.hour > 12
            ? dateTime.hour - 12
            : dateTime.hour;

    final minute = dateTime.minute.toString().padLeft(2, '0');
    final period = dateTime.hour >= 12 ? 'PM' : 'AM';

    return '$hour:$minute $period';
  }

  Future<void> _showTimePicker(BuildContext context) async {
    DateTime selectedTime = widget.selectedDate;

    // 30-minute interval
    final initialMinute = selectedTime.minute < 15
        ? 0
        : selectedTime.minute < 45
            ? 30
            : 0;

    if (selectedTime.minute >= 45) {
      selectedTime = selectedTime.add(const Duration(hours: 1));
    }

    selectedTime = DateTime(
      selectedTime.year,
      selectedTime.month,
      selectedTime.day,
      selectedTime.hour,
      initialMinute,
    );

    final result = await showCupertinoModalPopup<DateTime>(
      context: context,
      builder: (context) {
        DateTime tempTime = selectedTime;

        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              height: 360,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),

                  // Small drag indicator
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Header
                  SizedBox(
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              'Select Start Time',
                              style: TextStyle(
                                color: Color(0xFF263238),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.pop(context, tempTime);
                            },
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                color: Color(0xFFF57C00),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),

                  // Wheel Picker
                  Expanded(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: tempTime,
                      use24hFormat: false,
                      minuteInterval: 30,
                      onDateTimeChanged: (DateTime value) {
                        setModalState(() {
                          tempTime = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );

    if (result != null) {
      await widget.onTimeSelected?.call(result);
    }
  }
}
