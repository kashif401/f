import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _accessToken =
          await secureStorage.getString('ff_accessToken') ?? _accessToken;
    });
    await _safeInitAsync(() async {
      _refreshToken =
          await secureStorage.getString('ff_refreshToken') ?? _refreshToken;
    });
    await _safeInitAsync(() async {
      _isLoggedIn = await secureStorage.getBool('ff_isLoggedIn') ?? _isLoggedIn;
    });
    await _safeInitAsync(() async {
      _isBiometricEnabled =
          await secureStorage.getBool('ff_isBiometricEnabled') ??
              _isBiometricEnabled;
    });
    await _safeInitAsync(() async {
      _serverPublicKey = await secureStorage.getString('ff_serverPublicKey') ??
          _serverPublicKey;
    });
    await _safeInitAsync(() async {
      _clientPrivateKey =
          await secureStorage.getString('ff_clientPrivateKey') ??
              _clientPrivateKey;
    });
    await _safeInitAsync(() async {
      _selectedLocation =
          await secureStorage.getString('ff_selectedLocation') ??
              _selectedLocation;
    });
    await _safeInitAsync(() async {
      _loginId = await secureStorage.getString('ff_loginId') ?? _loginId;
    });
    await _safeInitAsync(() async {
      _branchcode = await secureStorage.getInt('ff_branchcode') ?? _branchcode;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_apiresonsedatefilter') != null) {
        try {
          _apiresonsedatefilter = jsonDecode(
              await secureStorage.getString('ff_apiresonsedatefilter') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _recentSearches =
          await secureStorage.getStringList('ff_recentSearches') ??
              _recentSearches;
    });
    await _safeInitAsync(() async {
      _recentBranchCodes =
          (await secureStorage.getStringList('ff_recentBranchCodes'))
                  ?.map(int.parse)
                  .toList() ??
              _recentBranchCodes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  DateTime? _currentMonth;
  DateTime? get currentMonth => _currentMonth;
  set currentMonth(DateTime? value) {
    _currentMonth = value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    secureStorage.setString('ff_accessToken', value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    secureStorage.setString('ff_refreshToken', value);
  }

  void deleteRefreshToken() {
    secureStorage.delete(key: 'ff_refreshToken');
  }

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    secureStorage.setBool('ff_isLoggedIn', value);
  }

  void deleteIsLoggedIn() {
    secureStorage.delete(key: 'ff_isLoggedIn');
  }

  bool _isBiometricEnabled = false;
  bool get isBiometricEnabled => _isBiometricEnabled;
  set isBiometricEnabled(bool value) {
    _isBiometricEnabled = value;
    secureStorage.setBool('ff_isBiometricEnabled', value);
  }

  void deleteIsBiometricEnabled() {
    secureStorage.delete(key: 'ff_isBiometricEnabled');
  }

  String _serverPublicKey = '';
  String get serverPublicKey => _serverPublicKey;
  set serverPublicKey(String value) {
    _serverPublicKey = value;
    secureStorage.setString('ff_serverPublicKey', value);
  }

  void deleteServerPublicKey() {
    secureStorage.delete(key: 'ff_serverPublicKey');
  }

  String _clientPrivateKey = '';
  String get clientPrivateKey => _clientPrivateKey;
  set clientPrivateKey(String value) {
    _clientPrivateKey = value;
    secureStorage.setString('ff_clientPrivateKey', value);
  }

  void deleteClientPrivateKey() {
    secureStorage.delete(key: 'ff_clientPrivateKey');
  }

  bool _isEncryptionReady = false;
  bool get isEncryptionReady => _isEncryptionReady;
  set isEncryptionReady(bool value) {
    _isEncryptionReady = value;
  }

  dynamic _loginResponse;
  dynamic get loginResponse => _loginResponse;
  set loginResponse(dynamic value) {
    _loginResponse = value;
  }

  String _mobile = '';
  String get mobile => _mobile;
  set mobile(String value) {
    _mobile = value;
  }

  String _selectedLocation = '';
  String get selectedLocation => _selectedLocation;
  set selectedLocation(String value) {
    _selectedLocation = value;
    secureStorage.setString('ff_selectedLocation', value);
  }

  void deleteSelectedLocation() {
    secureStorage.delete(key: 'ff_selectedLocation');
  }

  String _loginId = '';
  String get loginId => _loginId;
  set loginId(String value) {
    _loginId = value;
    secureStorage.setString('ff_loginId', value);
  }

  void deleteLoginId() {
    secureStorage.delete(key: 'ff_loginId');
  }

  int _branchcode = 0;
  int get branchcode => _branchcode;
  set branchcode(int value) {
    _branchcode = value;
    secureStorage.setInt('ff_branchcode', value);
  }

  void deleteBranchcode() {
    secureStorage.delete(key: 'ff_branchcode');
  }

  dynamic _apiresonsedatefilter;
  dynamic get apiresonsedatefilter => _apiresonsedatefilter;
  set apiresonsedatefilter(dynamic value) {
    _apiresonsedatefilter = value;
    secureStorage.setString('ff_apiresonsedatefilter', jsonEncode(value));
  }

  void deleteApiresonsedatefilter() {
    secureStorage.delete(key: 'ff_apiresonsedatefilter');
  }

  dynamic _empSearch;
  dynamic get empSearch => _empSearch;
  set empSearch(dynamic value) {
    _empSearch = value;
  }

  bool _isSearchLoader = false;
  bool get isSearchLoader => _isSearchLoader;
  set isSearchLoader(bool value) {
    _isSearchLoader = value;
  }

  String _attendeeName = '';
  String get attendeeName => _attendeeName;
  set attendeeName(String value) {
    _attendeeName = value;
  }

  String _attendeeEmail = '';
  String get attendeeEmail => _attendeeEmail;
  set attendeeEmail(String value) {
    _attendeeEmail = value;
  }

  String _attendeeMobile = '';
  String get attendeeMobile => _attendeeMobile;
  set attendeeMobile(String value) {
    _attendeeMobile = value;
  }

  String _attendeeType = '';
  String get attendeeType => _attendeeType;
  set attendeeType(String value) {
    _attendeeType = value;
  }

  bool _isOrganizer = false;
  bool get isOrganizer => _isOrganizer;
  set isOrganizer(bool value) {
    _isOrganizer = value;
  }

  int _roomId = 0;
  int get roomId => _roomId;
  set roomId(int value) {
    _roomId = value;
  }

  bool _isOnlineMeeting = false;
  bool get isOnlineMeeting => _isOnlineMeeting;
  set isOnlineMeeting(bool value) {
    _isOnlineMeeting = value;
  }

  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  set bookingDate(DateTime? value) {
    _bookingDate = value;
  }

  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? value) {
    _startTime = value;
  }

  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? value) {
    _endTime = value;
  }

  String _meetingTitle = '';
  String get meetingTitle => _meetingTitle;
  set meetingTitle(String value) {
    _meetingTitle = value;
  }

  String _meetingDescription = '';
  String get meetingDescription => _meetingDescription;
  set meetingDescription(String value) {
    _meetingDescription = value;
  }

  int _noOfAttendees = 0;
  int get noOfAttendees => _noOfAttendees;
  set noOfAttendees(int value) {
    _noOfAttendees = value;
  }

  String _hostEmpCode = '';
  String get hostEmpCode => _hostEmpCode;
  set hostEmpCode(String value) {
    _hostEmpCode = value;
  }

  String _selectedfloor = '';
  String get selectedfloor => _selectedfloor;
  set selectedfloor(String value) {
    _selectedfloor = value;
  }

  List<dynamic> _SelectedEmployee = [];
  List<dynamic> get SelectedEmployee => _SelectedEmployee;
  set SelectedEmployee(List<dynamic> value) {
    _SelectedEmployee = value;
  }

  void addToSelectedEmployee(dynamic value) {
    SelectedEmployee.add(value);
  }

  void removeFromSelectedEmployee(dynamic value) {
    SelectedEmployee.remove(value);
  }

  void removeAtIndexFromSelectedEmployee(int index) {
    SelectedEmployee.removeAt(index);
  }

  void updateSelectedEmployeeAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    SelectedEmployee[index] = updateFn(_SelectedEmployee[index]);
  }

  void insertAtIndexInSelectedEmployee(int index, dynamic value) {
    SelectedEmployee.insert(index, value);
  }

  bool _empsearchloader = false;
  bool get empsearchloader => _empsearchloader;
  set empsearchloader(bool value) {
    _empsearchloader = value;
  }

  dynamic _meetingRoomResponse;
  dynamic get meetingRoomResponse => _meetingRoomResponse;
  set meetingRoomResponse(dynamic value) {
    _meetingRoomResponse = value;
  }

  List<dynamic> _meetingRoomList = [];
  List<dynamic> get meetingRoomList => _meetingRoomList;
  set meetingRoomList(List<dynamic> value) {
    _meetingRoomList = value;
  }

  void addToMeetingRoomList(dynamic value) {
    meetingRoomList.add(value);
  }

  void removeFromMeetingRoomList(dynamic value) {
    meetingRoomList.remove(value);
  }

  void removeAtIndexFromMeetingRoomList(int index) {
    meetingRoomList.removeAt(index);
  }

  void updateMeetingRoomListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    meetingRoomList[index] = updateFn(_meetingRoomList[index]);
  }

  void insertAtIndexInMeetingRoomList(int index, dynamic value) {
    meetingRoomList.insert(index, value);
  }

  dynamic _selectedRoom;
  dynamic get selectedRoom => _selectedRoom;
  set selectedRoom(dynamic value) {
    _selectedRoom = value;
  }

  dynamic _locationData;
  dynamic get locationData => _locationData;
  set locationData(dynamic value) {
    _locationData = value;
  }

  int _branchCodeSearch = 0;
  int get branchCodeSearch => _branchCodeSearch;
  set branchCodeSearch(int value) {
    _branchCodeSearch = value;
  }

  List<String> _recentSearches = [];
  List<String> get recentSearches => _recentSearches;
  set recentSearches(List<String> value) {
    _recentSearches = value;
    secureStorage.setStringList('ff_recentSearches', value);
  }

  void deleteRecentSearches() {
    secureStorage.delete(key: 'ff_recentSearches');
  }

  void addToRecentSearches(String value) {
    recentSearches.add(value);
    secureStorage.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeFromRecentSearches(String value) {
    recentSearches.remove(value);
    secureStorage.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeAtIndexFromRecentSearches(int index) {
    recentSearches.removeAt(index);
    secureStorage.setStringList('ff_recentSearches', _recentSearches);
  }

  void updateRecentSearchesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    recentSearches[index] = updateFn(_recentSearches[index]);
    secureStorage.setStringList('ff_recentSearches', _recentSearches);
  }

  void insertAtIndexInRecentSearches(int index, String value) {
    recentSearches.insert(index, value);
    secureStorage.setStringList('ff_recentSearches', _recentSearches);
  }

  List<int> _recentBranchCodes = [];
  List<int> get recentBranchCodes => _recentBranchCodes;
  set recentBranchCodes(List<int> value) {
    _recentBranchCodes = value;
    secureStorage.setStringList(
        'ff_recentBranchCodes', value.map((x) => x.toString()).toList());
  }

  void deleteRecentBranchCodes() {
    secureStorage.delete(key: 'ff_recentBranchCodes');
  }

  void addToRecentBranchCodes(int value) {
    recentBranchCodes.add(value);
    secureStorage.setStringList('ff_recentBranchCodes',
        _recentBranchCodes.map((x) => x.toString()).toList());
  }

  void removeFromRecentBranchCodes(int value) {
    recentBranchCodes.remove(value);
    secureStorage.setStringList('ff_recentBranchCodes',
        _recentBranchCodes.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromRecentBranchCodes(int index) {
    recentBranchCodes.removeAt(index);
    secureStorage.setStringList('ff_recentBranchCodes',
        _recentBranchCodes.map((x) => x.toString()).toList());
  }

  void updateRecentBranchCodesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    recentBranchCodes[index] = updateFn(_recentBranchCodes[index]);
    secureStorage.setStringList('ff_recentBranchCodes',
        _recentBranchCodes.map((x) => x.toString()).toList());
  }

  void insertAtIndexInRecentBranchCodes(int index, int value) {
    recentBranchCodes.insert(index, value);
    secureStorage.setStringList('ff_recentBranchCodes',
        _recentBranchCodes.map((x) => x.toString()).toList());
  }

  dynamic _qrResponse;
  dynamic get qrResponse => _qrResponse;
  set qrResponse(dynamic value) {
    _qrResponse = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
