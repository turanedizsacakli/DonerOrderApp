import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrinksRecord extends FirestoreRecord {
  DrinksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "drinkingName" field.
  String? _drinkingName;
  String get drinkingName => _drinkingName ?? '';
  bool hasDrinkingName() => _drinkingName != null;

  // "drinkingCost" field.
  double? _drinkingCost;
  double get drinkingCost => _drinkingCost ?? 0.0;
  bool hasDrinkingCost() => _drinkingCost != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _drinkingName = snapshotData['drinkingName'] as String?;
    _drinkingCost = castToType<double>(snapshotData['drinkingCost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drinks');

  static Stream<DrinksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DrinksRecord.fromSnapshot(s));

  static Future<DrinksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DrinksRecord.fromSnapshot(s));

  static DrinksRecord fromSnapshot(DocumentSnapshot snapshot) => DrinksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrinksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrinksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DrinksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrinksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrinksRecordData({
  int? id,
  String? drinkingName,
  double? drinkingCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'drinkingName': drinkingName,
      'drinkingCost': drinkingCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrinksRecordDocumentEquality implements Equality<DrinksRecord> {
  const DrinksRecordDocumentEquality();

  @override
  bool equals(DrinksRecord? e1, DrinksRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.drinkingName == e2?.drinkingName &&
        e1?.drinkingCost == e2?.drinkingCost;
  }

  @override
  int hash(DrinksRecord? e) =>
      const ListEquality().hash([e?.id, e?.drinkingName, e?.drinkingCost]);

  @override
  bool isValidKey(Object? o) => o is DrinksRecord;
}
