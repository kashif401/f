// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class OtpCountdown extends StatefulWidget {
  const OtpCountdown({
    super.key,
    this.width,
    this.height,
    required this.seconds,
    this.textColor,
    this.fontSize,
    this.onFinished,
    this.resetKey, // NEW
  });

  final double? width;
  final double? height;
  final int seconds;
  final Color? textColor;
  final double? fontSize;
  final Future Function()? onFinished;
  final int? resetKey; // NEW

  @override
  State<OtpCountdown> createState() => _OtpCountdownState();
}

class _OtpCountdownState extends State<OtpCountdown> {
  late int _seconds;
  Timer? _timer;

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (!mounted) return;

      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        timer.cancel();

        if (widget.onFinished != null) {
          await widget.onFinished!();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _seconds = widget.seconds;
    _startTimer();
  }

  @override
  void didUpdateWidget(covariant OtpCountdown oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.seconds != widget.seconds ||
        oldWidget.resetKey != widget.resetKey) {
      setState(() {
        _seconds = widget.seconds;
      });

      _startTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get formattedTime {
    final minutes = (_seconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Text(
        formattedTime,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: widget.textColor ?? Colors.black,
          fontSize: widget.fontSize ?? 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
