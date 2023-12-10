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
      _tableAccount1 = prefs.getInt('ff_tableAccount1') ?? _tableAccount1;
    });
    _safeInit(() {
      _tableAccount2 = prefs.getInt('ff_tableAccount2') ?? _tableAccount2;
    });
    _safeInit(() {
      _tableAccount3 = prefs.getInt('ff_tableAccount3') ?? _tableAccount3;
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

  int _tableAccount1 = 0;
  int get tableAccount1 => _tableAccount1;
  set tableAccount1(int value) {
    _tableAccount1 = value;
    prefs.setInt('ff_tableAccount1', value);
  }

  int _tableAccount2 = 0;
  int get tableAccount2 => _tableAccount2;
  set tableAccount2(int value) {
    _tableAccount2 = value;
    prefs.setInt('ff_tableAccount2', value);
  }

  int _tableAccount3 = 0;
  int get tableAccount3 => _tableAccount3;
  set tableAccount3(int value) {
    _tableAccount3 = value;
    prefs.setInt('ff_tableAccount3', value);
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
