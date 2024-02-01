import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tableNumber" field.
  int? _tableNumber;
  int get tableNumber => _tableNumber ?? 0;
  bool hasTableNumber() => _tableNumber != null;

  // "mealName" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  bool hasMealName() => _mealName != null;

  // "portionOfMeal" field.
  double? _portionOfMeal;
  double get portionOfMeal => _portionOfMeal ?? 0.0;
  bool hasPortionOfMeal() => _portionOfMeal != null;

  // "featuresOfMeal" field.
  List<String>? _featuresOfMeal;
  List<String> get featuresOfMeal => _featuresOfMeal ?? const [];
  bool hasFeaturesOfMeal() => _featuresOfMeal != null;

  // "drinkingName" field.
  String? _drinkingName;
  String get drinkingName => _drinkingName ?? '';
  bool hasDrinkingName() => _drinkingName != null;

  // "costOfThisPost" field.
  double? _costOfThisPost;
  double get costOfThisPost => _costOfThisPost ?? 0.0;
  bool hasCostOfThisPost() => _costOfThisPost != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "waiterName" field.
  String? _waiterName;
  String get waiterName => _waiterName ?? '';
  bool hasWaiterName() => _waiterName != null;

  void _initializeFields() {
    _tableNumber = castToType<int>(snapshotData['tableNumber']);
    _mealName = snapshotData['mealName'] as String?;
    _portionOfMeal = castToType<double>(snapshotData['portionOfMeal']);
    _featuresOfMeal = getDataList(snapshotData['featuresOfMeal']);
    _drinkingName = snapshotData['drinkingName'] as String?;
    _costOfThisPost = castToType<double>(snapshotData['costOfThisPost']);
    _date = snapshotData['date'] as DateTime?;
    _waiterName = snapshotData['waiterName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  int? tableNumber,
  String? mealName,
  double? portionOfMeal,
  String? drinkingName,
  double? costOfThisPost,
  DateTime? date,
  String? waiterName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tableNumber': tableNumber,
      'mealName': mealName,
      'portionOfMeal': portionOfMeal,
      'drinkingName': drinkingName,
      'costOfThisPost': costOfThisPost,
      'date': date,
      'waiterName': waiterName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tableNumber == e2?.tableNumber &&
        e1?.mealName == e2?.mealName &&
        e1?.portionOfMeal == e2?.portionOfMeal &&
        listEquality.equals(e1?.featuresOfMeal, e2?.featuresOfMeal) &&
        e1?.drinkingName == e2?.drinkingName &&
        e1?.costOfThisPost == e2?.costOfThisPost &&
        e1?.date == e2?.date &&
        e1?.waiterName == e2?.waiterName;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.tableNumber,
        e?.mealName,
        e?.portionOfMeal,
        e?.featuresOfMeal,
        e?.drinkingName,
        e?.costOfThisPost,
        e?.date,
        e?.waiterName
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
