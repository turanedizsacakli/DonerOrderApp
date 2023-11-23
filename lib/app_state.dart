import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _waiterName = prefs.getString('ff_waiterName') ?? _waiterName;
    });
    _safeInit(() {
      _tableNumber = prefs.getInt('ff_tableNumber') ?? _tableNumber;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _waiterName = '';
  String get waiterName => _waiterName;
  set waiterName(String value) {
    _waiterName = value;
    prefs.setString('ff_waiterName', value);
  }

  int _tableNumber = 0;
  int get tableNumber => _tableNumber;
  set tableNumber(int value) {
    _tableNumber = value;
    prefs.setInt('ff_tableNumber', value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
