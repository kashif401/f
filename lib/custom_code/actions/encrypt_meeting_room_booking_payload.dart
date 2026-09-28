// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> encryptMeetingRoomBookingPayload(
  int? branchCode,
  int? roomId,
  String? bookingDate,
  String? startTime,
  String? endTime,
  String? meetingTitle,
  String? meetingDescription,
  int? noOfAttendees,
  String? hostEmpCode,
  String? serverPublicKey,
  List<dynamic> attendees,
  String? accessToken,
) async {
  print('========== ENCRYPTION START ==========');

  try {
    // =========================================================
    // 1. INPUT LOGS
    // =========================================================

    print('[ENCRYPT] branchCode: $branchCode');
    print('[ENCRYPT] roomId: $roomId');
    print('[ENCRYPT] bookingDate RAW: [$bookingDate]');
    print('[ENCRYPT] startTime RAW: [$startTime]');
    print('[ENCRYPT] endTime RAW: [$endTime]');
    print('[ENCRYPT] meetingTitle RAW: [$meetingTitle]');
    print('[ENCRYPT] meetingDescription RAW: [$meetingDescription]');
    print('[ENCRYPT] noOfAttendees INPUT: $noOfAttendees');
    print('[ENCRYPT] hostEmpCode: [$hostEmpCode]');
    print('[ENCRYPT] attendees INPUT COUNT: ${attendees.length}');

    // =========================================================
    // 2. REQUIRED VALIDATION
    // =========================================================

    if (serverPublicKey == null || serverPublicKey.trim().isEmpty) {
      throw Exception('serverPublicKey is missing');
    }

    if (accessToken == null || accessToken.trim().isEmpty) {
      throw Exception('accessToken is missing');
    }

    if (branchCode == null) {
      throw Exception('branchCode is missing');
    }

    if (roomId == null) {
      throw Exception('roomId is missing');
    }

    if (hostEmpCode == null || hostEmpCode.trim().isEmpty) {
      throw Exception('hostEmpCode is missing');
    }

    // =========================================================
    // 3. BOOKING DATE
    //
    // Backend format:
    // yyyy-MM-dd
    //
    // Example:
    // 2026-09-22
    // =========================================================

    String convertBookingDate(String value) {
      final raw = value.trim();

      if (raw.isEmpty) {
        throw Exception('bookingDate is empty');
      }

      try {
        final parsed = DateTime.parse(raw);

        final year = parsed.year.toString().padLeft(4, '0');

        final month = parsed.month.toString().padLeft(2, '0');

        final day = parsed.day.toString().padLeft(2, '0');

        return '$year-$month-$day';
      } catch (e) {
        throw Exception(
          'Invalid bookingDate: [$value]',
        );
      }
    }

    final apiBookingDate = convertBookingDate(bookingDate ?? '');

    print(
      '[ENCRYPT] API bookingDate: $apiBookingDate',
    );

    // =========================================================
    // 4. DATETIME CONVERSION
    //
    // Backend requires timezone.
    //
    // Final:
    // 2026-09-22T09:01:00.000Z
    //
    // =========================================================

    String convertToUtcIso(
      String value,
      String fieldName,
    ) {
      final raw = value.trim();

      if (raw.isEmpty) {
        throw Exception('$fieldName is empty');
      }

      try {
        final parsed = DateTime.parse(raw);

        // Convert selected/local DateTime to UTC.
        final utc = parsed.toUtc();

        final year = utc.year.toString().padLeft(4, '0');

        final month = utc.month.toString().padLeft(2, '0');

        final day = utc.day.toString().padLeft(2, '0');

        final hour = utc.hour.toString().padLeft(2, '0');

        final minute = utc.minute.toString().padLeft(2, '0');

        final second = utc.second.toString().padLeft(2, '0');

        final millisecond = utc.millisecond.toString().padLeft(3, '0');

        final result = '$year-$month-$day'
            'T$hour:$minute:$second'
            '.$millisecond'
            'Z';

        if (!result.endsWith('Z')) {
          throw Exception(
            '$fieldName timezone missing',
          );
        }

        return result;
      } catch (e) {
        throw Exception(
          'Invalid $fieldName: [$value]',
        );
      }
    }

    // =========================================================
    // 5. START TIME
    // =========================================================

    final apiStartTime = convertToUtcIso(
      startTime ?? '',
      'startTime',
    );

    // =========================================================
    // 6. END TIME
    // =========================================================

    final apiEndTime = convertToUtcIso(
      endTime ?? '',
      'endTime',
    );

    print(
      '[ENCRYPT] API startTime: $apiStartTime',
    );

    print(
      '[ENCRYPT] API endTime: $apiEndTime',
    );

    // =========================================================
    // 7. START / END TIME VALIDATION
    // =========================================================

    final parsedStart = DateTime.parse(apiStartTime);

    final parsedEnd = DateTime.parse(apiEndTime);

    if (!parsedEnd.isAfter(parsedStart)) {
      throw Exception(
        'endTime must be greater than startTime',
      );
    }

    // =========================================================
    // 8. EMAIL CLEANER
    // =========================================================

    String cleanEmail(dynamic value) {
      if (value == null) {
        return '';
      }

      String email = value.toString();

      // Remove leading/trailing spaces.
      email = email.trim();

      // Remove invisible Unicode characters.
      email = email
          .replaceAll('\u200B', '')
          .replaceAll('\u200C', '')
          .replaceAll('\u200D', '')
          .replaceAll('\uFEFF', '');

      // Remove accidental whitespace.
      email = email.replaceAll(
        RegExp(r'\s+'),
        '',
      );

      // Remove accidental quotes.
      email = email.replaceAll('"', '');
      email = email.replaceAll("'", '');

      return email.trim();
    }

    // =========================================================
    // 9. EMAIL VALIDATION
    // =========================================================

    final emailRegex = RegExp(
      r'^[A-Za-z0-9.!#$%&*+/=?^_`{|}~-]+'
      r'@[A-Za-z0-9-]+'
      r'(?:\.[A-Za-z0-9-]+)+$',
    );

    // =========================================================
    // 10. BUILD ATTENDEE LIST
    // =========================================================

    final List<dynamic> attendeeList = [];

    for (int index = 0; index < attendees.length; index++) {
      final item = attendees[index];

      print('');
      print(
        '========== ATTENDEE ${index + 1} ==========',
      );

      if (item is! Map) {
        print(
          '[ENCRYPT] Invalid attendee object. '
          'Skipping index $index',
        );
        continue;
      }

      // -------------------------------------------------------
      // EMPLOYEE CODE
      // -------------------------------------------------------

      final empCode = (item['LOGINID'] ??
              item['loginId'] ??
              item['LOGIN_ID'] ??
              item['empCode'] ??
              '')
          .toString()
          .trim();

      // -------------------------------------------------------
      // NAME
      // -------------------------------------------------------

      final attendeeName = (item['EMPLOYEE_NAME'] ??
              item['employeeName'] ??
              item['attendeeName'] ??
              '')
          .toString()
          .trim();

      // -------------------------------------------------------
      // EMAIL RAW
      // -------------------------------------------------------

      final rawEmail = (item['EMAILID'] ??
          item['EMPLOYEE_EMAIL'] ??
          item['employeeEmail'] ??
          item['attendeeEmail'] ??
          '');

      final attendeeEmail = cleanEmail(rawEmail);

      // -------------------------------------------------------
      // MOBILE
      // -------------------------------------------------------

      final attendeeMobile = (item['MOBILENUMBER'] ??
              item['EMPLOYEE_MOBILE'] ??
              item['employeeMobile'] ??
              item['attendeeMobile'] ??
              '')
          .toString()
          .trim();

      // -------------------------------------------------------
      // ATTENDEE TYPE
      // -------------------------------------------------------

      final attendeeType =
          (item['attendeeType'] ?? item['ATTENDEETYPE'] ?? 'INTERNAL')
              .toString()
              .trim()
              .toUpperCase();

      // -------------------------------------------------------
      // COMPANY NAME
      // -------------------------------------------------------

      final companyName = (item['companyName'] ??
              item['CompanyName'] ??
              item['COMPANYNAME'] ??
              item['company_name'] ??
              '')
          .toString()
          .trim();

      // -------------------------------------------------------
      // ORGANIZER
      // -------------------------------------------------------

      final isOrganizer =
          empCode.toUpperCase() == hostEmpCode.trim().toUpperCase();

      // -------------------------------------------------------
      // LOG
      // -------------------------------------------------------

      print(
        '[ENCRYPT] empCode       : [$empCode]',
      );

      print(
        '[ENCRYPT] name         : [$attendeeName]',
      );

      print(
        '[ENCRYPT] raw email    : [$rawEmail]',
      );

      print(
        '[ENCRYPT] clean email  : [$attendeeEmail]',
      );

      print(
        '[ENCRYPT] mobile       : [$attendeeMobile]',
      );

      print(
        '[ENCRYPT] type         : [$attendeeType]',
      );

      print(
        '[ENCRYPT] company      : [$companyName]',
      );

      print(
        '[ENCRYPT] isOrganizer  : [$isOrganizer]',
      );

      // -------------------------------------------------------
      // EMAIL VALIDATION
      //
      // If email is present, it must be valid.
      // Empty email is allowed here because backend may have
      // different rules for attendee types.
      // -------------------------------------------------------

      if (attendeeEmail.isNotEmpty && !emailRegex.hasMatch(attendeeEmail)) {
        throw Exception(
          'Invalid attendeeEmail at attendee '
          '${index + 1}: [$attendeeEmail]',
        );
      }

      // -------------------------------------------------------
      // ATTENDEE OBJECT
      // -------------------------------------------------------

      attendeeList.add({
        'empCode': empCode,
        'attendeeName': attendeeName,
        'attendeeEmail': attendeeEmail,
        'attendeeMobile': attendeeMobile,
        'attendeeType': attendeeType,
        'companyName': companyName,
        'isOrganizer': isOrganizer,
      });
    }

    // =========================================================
    // 11. ATTENDEE LIST VALIDATION
    // =========================================================

    if (attendeeList.isEmpty) {
      throw Exception(
        'No valid attendees found',
      );
    }

    print('');
    print(
      '[ENCRYPT] FINAL ATTENDEE COUNT: '
      '${attendeeList.length}',
    );

    // =========================================================
    // 12. MEETING TITLE
    // =========================================================

    final finalMeetingTitle = meetingTitle?.trim() ?? '';

    if (finalMeetingTitle.isEmpty) {
      throw Exception(
        'meetingTitle is empty',
      );
    }

    // =========================================================
    // 13. MEETING DESCRIPTION
    // =========================================================

    final finalMeetingDescription = meetingDescription?.trim() ?? '';

    // =========================================================
    // 14. AUTOMATIC ATTENDEE COUNT
    //
    // IMPORTANT:
    //
    // Do NOT use the noOfAttendees input.
    //
    // 4 attendees = 4
    // 5 attendees = 5
    // 6 attendees = 6
    // =========================================================

    final finalNoOfAttendees = attendeeList.length;

    print(
      '[ENCRYPT] AUTO noOfAttendees: '
      '$finalNoOfAttendees',
    );

    // =========================================================
    // 15. FINAL ORIGINAL PAYLOAD
    // =========================================================

    final payload = {
      'attendees': attendeeList,
      'branchCode': branchCode,
      'roomId': roomId,
      'isOnlineMeeting': false,
      'bookingDate': apiBookingDate,
      'startTime': apiStartTime,
      'endTime': apiEndTime,
      'meetingTitle': finalMeetingTitle,
      'meetingDescription': finalMeetingDescription,
      'noOfAttendees': finalNoOfAttendees,
      'hostEmpCode': hostEmpCode.trim(),
    };

    // =========================================================
    // 16. FINAL PAYLOAD LOG
    // =========================================================

    print('');
    print(
      '==========================================',
    );

    print(
      '     FINAL PAYLOAD BEFORE ENCRYPTION',
    );

    print(
      '==========================================',
    );

    print(
      const JsonEncoder.withIndent('  ').convert(payload),
    );

    print(
      '==========================================',
    );

    // =========================================================
    // 17. FINAL VALIDATION
    // =========================================================

    if (apiBookingDate.isEmpty) {
      throw Exception(
        'Final bookingDate is empty',
      );
    }

    if (!apiStartTime.endsWith('Z')) {
      throw Exception(
        'Final startTime timezone is missing',
      );
    }

    if (!apiEndTime.endsWith('Z')) {
      throw Exception(
        'Final endTime timezone is missing',
      );
    }

    if (attendeeList.length != finalNoOfAttendees) {
      throw Exception(
        'Attendee count mismatch',
      );
    }

    // =========================================================
    // 18. CRYPTO API BODY
    // =========================================================

    final cryptoBody = {
      'payload': payload,
      'server_public_key': serverPublicKey,
    };

    // =========================================================
    // 19. CRYPTO API URL
    // =========================================================

    final cryptoUrl = Uri.parse(
      'https://ems.icicipruamc.com/'
      'i-connect-wrp/api/v1/crypto/encrypt',
    );

    print(
      '[ENCRYPT] Calling encryption API...',
    );

    // =========================================================
    // 20. CALL ENCRYPTION API
    // =========================================================

    final response = await http.post(
      cryptoUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${accessToken.trim()}',
      },
      body: jsonEncode(cryptoBody),
    );

    // =========================================================
    // 21. RESPONSE LOG
    // =========================================================

    print(
      '[ENCRYPT] HTTP STATUS: '
      '${response.statusCode}',
    );

    print(
      '[ENCRYPT] RESPONSE LENGTH: '
      '${response.body.length}',
    );

    print(
      '[ENCRYPT] RESPONSE BODY: '
      '${response.body}',
    );

    // =========================================================
    // 22. STATUS VALIDATION
    // =========================================================

    if (response.statusCode != 200) {
      throw Exception(
        'Encryption API failed. '
        'Status: ${response.statusCode}, '
        'Response: ${response.body}',
      );
    }

    // =========================================================
    // 23. PARSE RESPONSE
    // =========================================================

    final result = jsonDecode(response.body);

    if (result is! Map) {
      throw Exception(
        'Invalid encryption API response',
      );
    }

    print(
      '[ENCRYPT] success: '
      '${result['success']}',
    );

    // =========================================================
    // 24. SUCCESS VALIDATION
    // =========================================================

    if (result['success'] != true) {
      throw Exception(
        'Encryption API returned success=false: '
        '${response.body}',
      );
    }

    // =========================================================
    // 25. DATA VALIDATION
    // =========================================================

    if (result['data'] == null) {
      throw Exception(
        'Encryption API returned null data',
      );
    }

    final encryptedData = result['data'];

    if (encryptedData is! Map) {
      throw Exception(
        'Encryption API data is not an object',
      );
    }

    // =========================================================
    // 26. ENCRYPTED EK
    // =========================================================

    final encryptedEk = encryptedData['ek'];

    // =========================================================
    // 27. ENCRYPTED DATA
    // =========================================================

    final encryptedPayload = encryptedData['data'];

    // =========================================================
    // 28. EK VALIDATION
    // =========================================================

    if (encryptedEk == null || encryptedEk.toString().trim().isEmpty) {
      throw Exception(
        'Encryption API returned empty ek',
      );
    }

    // =========================================================
    // 29. DATA VALIDATION
    // =========================================================

    if (encryptedPayload == null ||
        encryptedPayload.toString().trim().isEmpty) {
      throw Exception(
        'Encryption API returned empty data',
      );
    }

    print(
      '[ENCRYPT] ek length: '
      '${encryptedEk.toString().length}',
    );

    print(
      '[ENCRYPT] data length: '
      '${encryptedPayload.toString().length}',
    );

    // =========================================================
    // 30. FINAL ENCRYPTED BODY
    // =========================================================

    final encryptedBody = {
      'ek': encryptedEk.toString(),
      'data': encryptedPayload.toString(),
    };

    print('');
    print(
      '==========================================',
    );

    print(
      '         ENCRYPTION SUCCESS',
    );

    print(
      '==========================================',
    );

    // =========================================================
    // 31. RETURN ONLY EK + DATA
    // =========================================================

    return encryptedBody;
  } catch (e, stackTrace) {
    print('');
    print(
      '==========================================',
    );

    print(
      '         ENCRYPTION FAILED',
    );

    print(
      '==========================================',
    );

    print(
      '[ENCRYPT] ERROR: $e',
    );

    print(
      '[ENCRYPT] STACKTRACE:',
    );

    print(stackTrace);

    print(
      '==========================================',
    );

    rethrow;
  }
}
