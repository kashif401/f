// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getMeetingRoombyFloor(
  dynamic decryptedResponse,
  String? selectedFloorId,
) async {
  try {
    if (decryptedResponse == null) {
      print("decryptedResponse is NULL");
      return [];
    }

    print("Selected Floor Id = $selectedFloorId");

    final List floors =
        decryptedResponse["data"]["branchDetails"]["floorDetails"] ?? [];

    print("Floor Count = ${floors.length}");

    for (final floor in floors) {
      print("FloorId = ${floor["floorId"]}, Name = ${floor["floorName"]}");

      if (floor["floorId"].toString() == selectedFloorId.toString()) {
        print("MATCH FOUND");

        final rooms = floor["meetingRoomsDetails"] ?? [];

        print("Room Count = ${rooms.length}");

        return List<dynamic>.from(rooms);
      }
    }

    print("NO MATCH FOUND");
    return [];
  } catch (e, s) {
    print(e);
    print(s);
    return [];
  }
}
