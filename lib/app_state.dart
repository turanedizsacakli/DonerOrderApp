import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
    _safeInit(() {
      _selectedMealAndDrinking =
          prefs.getString('ff_selectedMealAndDrinking') ??
              _selectedMealAndDrinking;
    });
    _safeInit(() {
      _selectedPortion =
          prefs.getString('ff_selectedPortion') ?? _selectedPortion;
    });
    _safeInit(() {
      _order = prefs.getStringList('ff_order') ?? _order;
    });
    _safeInit(() {
      _tableName = prefs.getString('ff_tableName') ?? _tableName;
    });
    _safeInit(() {
      _chicken = prefs.getInt('ff_chicken') ?? _chicken;
    });
    _safeInit(() {
      _meat = prefs.getInt('ff_meat') ?? _meat;
    });
    _safeInit(() {
      _account = prefs.getInt('ff_account') ?? _account;
    });
    _safeInit(() {
      _tableAccount = prefs.getInt('ff_tableAccount') ?? _tableAccount;
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

  String _selectedMealAndDrinking = '';
  String get selectedMealAndDrinking => _selectedMealAndDrinking;
  set selectedMealAndDrinking(String value) {
    _selectedMealAndDrinking = value;
    prefs.setString('ff_selectedMealAndDrinking', value);
  }

  String _selectedPortion = '';
  String get selectedPortion => _selectedPortion;
  set selectedPortion(String value) {
    _selectedPortion = value;
    prefs.setString('ff_selectedPortion', value);
  }

  List<String> _order = [];
  List<String> get order => _order;
  set order(List<String> value) {
    _order = value;
    prefs.setStringList('ff_order', value);
  }

  void addToOrder(String value) {
    _order.add(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeFromOrder(String value) {
    _order.remove(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeAtIndexFromOrder(int index) {
    _order.removeAt(index);
    prefs.setStringList('ff_order', _order);
  }

  void updateOrderAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _order[index] = updateFn(_order[index]);
    prefs.setStringList('ff_order', _order);
  }

  void insertAtIndexInOrder(int index, String value) {
    _order.insert(index, value);
    prefs.setStringList('ff_order', _order);
  }

  String _tableName = '';
  String get tableName => _tableName;
  set tableName(String value) {
    _tableName = value;
    prefs.setString('ff_tableName', value);
  }

  int _chicken = 60;
  int get chicken => _chicken;
  set chicken(int value) {
    _chicken = value;
    prefs.setInt('ff_chicken', value);
  }

  int _meat = 75;
  int get meat => _meat;
  set meat(int value) {
    _meat = value;
    prefs.setInt('ff_meat', value);
  }

  int _account = 0;
  int get account => _account;
  set account(int value) {
    _account = value;
    prefs.setInt('ff_account', value);
  }

  int _tableAccount = 0;
  int get tableAccount => _tableAccount;
  set tableAccount(int value) {
    _tableAccount = value;
    prefs.setInt('ff_tableAccount', value);
  }

  List<String> _featuresListState = [];
  List<String> get featuresListState => _featuresListState;
  set featuresListState(List<String> value) {
    _featuresListState = value;
  }

  void addToFeaturesListState(String value) {
    _featuresListState.add(value);
  }

  void removeFromFeaturesListState(String value) {
    _featuresListState.remove(value);
  }

  void removeAtIndexFromFeaturesListState(int index) {
    _featuresListState.removeAt(index);
  }

  void updateFeaturesListStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _featuresListState[index] = updateFn(_featuresListState[index]);
  }

  void insertAtIndexInFeaturesListState(int index, String value) {
    _featuresListState.insert(index, value);
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
