import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Global Group Code

class GlobalGroup {
  static String getBaseUrl() => 'https://ems.icicipruamc.com/global-api';
  static Map<String, String> headers = {};
  static SendOTPCall sendOTPCall = SendOTPCall();
  static LoginCall loginCall = LoginCall();
  static VerifyotpCall verifyotpCall = VerifyotpCall();
  static LogoutCall logoutCall = LogoutCall();
  static BranchesSearchCall branchesSearchCall = BranchesSearchCall();
  static MstusersCall mstusersCall = MstusersCall();
  static MstusersVisitoCall mstusersVisitoCall = MstusersVisitoCall();
  static MstusersloginIdCall mstusersloginIdCall = MstusersloginIdCall();
  static BranchesSearchBranchcodeCall branchesSearchBranchcodeCall =
      BranchesSearchBranchcodeCall();
  static ApimstusersloginIdCall apimstusersloginIdCall =
      ApimstusersloginIdCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static ProfileCall profileCall = ProfileCall();
  static BranchesForVisitormoduleCall branchesForVisitormoduleCall =
      BranchesForVisitormoduleCall();
}

class SendOTPCall {
  Future<ApiCallResponse> call({
    String? ek = '',
    String? data = '',
    String? authToken = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "ek": "${ek}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendOTP',
      apiUrl: '${baseUrl}/api/verify/send-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? ek = '',
    String? data = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "ek": "${ek}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/api/uat/uat-login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyotpCall {
  Future<ApiCallResponse> call({
    String? ek = '',
    String? data = '',
    String? authToken = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "ek": "${escapeStringForJson(ek)}",
  "data": "${escapeStringForJson(data)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyotp',
      apiUrl: '${baseUrl}/api/verify/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${baseUrl}/api/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BranchesSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? search = '',
    int? skip,
    int? limit,
    String? sortBy = '',
    String? sortDir = '',
    int? branchCode,
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'branches search',
      apiUrl: '${baseUrl}/api/branches/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'search': search,
        'skip': skip,
        'limit': limit,
        'sort_by': sortBy,
        'sort_dir': sortDir,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MstusersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? skip,
    int? userId,
    String? employeeNo = '',
    String? loginid = '',
    int? roleId,
    int? zoneId,
    int? regionId,
    int? clusterId,
    int? branchCode,
    int? deptId,
    String? gradeId = '',
    String? designation = '',
    String? isactive = '',
    String? isSales = '',
    String? search = '',
    String? q = '',
    String? sortBy = '',
    String? sortDir = '',
    int? limit,
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mstusers',
      apiUrl: '${baseUrl}/api/mst-users/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'search': search,
        'skip': skip,
        'limit': limit,
        'sort_by': sortBy,
        'sort_dir': sortDir,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MstusersVisitoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? skip,
    int? userId,
    String? employeeNo = '',
    String? loginid = '',
    int? roleId,
    int? zoneId,
    int? regionId,
    int? clusterId,
    int? branchCode,
    int? deptId,
    String? gradeId = '',
    String? designation = '',
    String? isactive = '',
    String? isSales = '',
    String? search = '',
    String? q = '',
    String? sortBy = '',
    String? sortDir = '',
    int? limit,
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mstusers Visito',
      apiUrl: '${baseUrl}/api/mst-users/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'skip': skip,
        'sort_by': sortBy,
        'sort_dir': sortDir,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MstusersloginIdCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? loginId = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mstusersloginId',
      apiUrl: '${baseUrl}/api/mst-users/${loginId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BranchesSearchBranchcodeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? skip,
    int? limit,
    String? sortBy = '',
    String? sortDir = '',
    int? branchCode,
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'branches search branchcode',
      apiUrl: '${baseUrl}/api/branches/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'skip': skip,
        'limit': limit,
        'sort_by': sortBy,
        'sort_dir': sortDir,
        'branch_code': branchCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApimstusersloginIdCall {
  Future<ApiCallResponse> call({
    String? loginId = '',
    String? authToken = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'apimstusersloginId',
      apiUrl: '${baseUrl}/api/mst-users/{loginId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'loginId ': loginId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? ek = '',
    String? data = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "ek": "${ek}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RefreshToken',
      apiUrl: '${baseUrl}/api/auth/refresh-token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? ek(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ek''',
      ));
  String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class ProfileCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'profile',
      apiUrl: '${baseUrl}/api/auth/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BranchesForVisitormoduleCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? skip,
    String? sortBy = '',
    String? sortDir = '',
  }) async {
    final baseUrl = GlobalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'branches for visitormodule',
      apiUrl: '${baseUrl}/api/branches/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'skip': skip,
        'sort_by': sortBy,
        'sort_dir': sortDir,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Global Group Code

/// Start HomePage Group Code

class HomePageGroup {
  static String getBaseUrl() => 'https://ems.icicipruamc.com/i-connect-wrp';
  static Map<String, String> headers = {};
  static MeetingroomsbookingsCall meetingroomsbookingsCall =
      MeetingroomsbookingsCall();
  static MeetingroomsbranchdetailsCall meetingroomsbranchdetailsCall =
      MeetingroomsbranchdetailsCall();
  static MeetingRoomsBookCall meetingRoomsBookCall = MeetingRoomsBookCall();
  static MeetingroomsbookingRefNoCall meetingroomsbookingRefNoCall =
      MeetingroomsbookingRefNoCall();
}

class MeetingroomsbookingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = HomePageGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'meetingroomsbookings',
      apiUrl: '${baseUrl}/api/v1/meeting-rooms/bookings',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeetingroomsbranchdetailsCall {
  Future<ApiCallResponse> call({
    int? branchCode,
    String? authToken = '',
  }) async {
    final baseUrl = HomePageGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'meetingroomsbranchdetails',
      apiUrl: '${baseUrl}/api/v1/meeting-rooms/branch-details',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'branch_code': branchCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeetingRoomsBookCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? ek = '',
    String? data = '',
  }) async {
    final baseUrl = HomePageGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "ek": "${ek}",
  "data": "${data}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'meeting rooms book',
      apiUrl: '${baseUrl}/api/v1/meeting-rooms/book',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeetingroomsbookingRefNoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = HomePageGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'meetingroomsbookingRefNo',
      apiUrl: '${baseUrl}/api/v1/meeting-rooms/{bookingRefNo}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End HomePage Group Code

/// Start Visitor Management Group Code

class VisitorManagementGroup {
  static String getBaseUrl() => 'https://ems.icicipruamc.com/i-connect-wrp';
  static Map<String, String> headers = {};
  static VisitorsCall visitorsCall = VisitorsCall();
  static VisitorsbyphoneCall visitorsbyphoneCall = VisitorsbyphoneCall();
  static QrscanCall qrscanCall = QrscanCall();
  static CreateVisitorCall createVisitorCall = CreateVisitorCall();
}

class VisitorsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? name = '',
    String? phone = '',
    String? email = '',
    String? fromDate = '',
    String? toDate = '',
    String? fromTime = '',
    String? toTime = '',
    String? purpose = '',
    String? vehicle = '',
    String? company = '',
    FFUploadedFile? photo,
  }) async {
    final baseUrl = VisitorManagementGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'visitors',
      apiUrl: '${baseUrl}/api/v1/visitors/visits',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'name': name,
        'phone': phone,
        'email': email,
        'from_date': fromDate,
        'to_date': toDate,
        'from_time': fromTime,
        'to_time': toTime,
        'purpose': purpose,
        'vehicle': vehicle,
        'company': company,
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VisitorsbyphoneCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? phone = '',
  }) async {
    final baseUrl = VisitorManagementGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'visitorsbyphone',
      apiUrl: '${baseUrl}/api/v1/visitors/visitors/by-phone/${phone}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QrscanCall {
  Future<ApiCallResponse> call({
    String? module = '',
    String? id = '',
    String? action = '',
    String? qrToken = '',
    String? authToken = '',
  }) async {
    final baseUrl = VisitorManagementGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'qrscan',
      apiUrl: '${baseUrl}/api/v1/qr/scan',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'module': module,
        'id': id,
        'action': action,
        'qrToken': qrToken,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.isValid''',
      ));
}

class CreateVisitorCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? phoneNumber = '',
    String? companyName = '',
    String? authToken = '',
  }) async {
    final baseUrl = VisitorManagementGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}",
  "email": "${escapeStringForJson(email)}",
  "phone_number": "${escapeStringForJson(phoneNumber)}",
  "company_name": "${escapeStringForJson(companyName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createVisitor',
      apiUrl: '${baseUrl}/api/v1/visitors',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Visitor Management Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
