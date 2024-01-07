import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MealsRecord extends FirestoreRecord {
  MealsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "mealName" field.
  String? _mealName;
  String get mealName => _mealName ?? '';
  bool hasMealName() => _mealName != null;

  // "mealCost" field.
  double? _mealCost;
  double get mealCost => _mealCost ?? 0.0;
  bool hasMealCost() => _mealCost != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _mealName = snapshotData['mealName'] as String?;
    _mealCost = castToType<double>(snapshotData['mealCost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meals');

  static Stream<MealsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MealsRecord.fromSnapshot(s));

  static Future<MealsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MealsRecord.fromSnapshot(s));

  static MealsRecord fromSnapshot(DocumentSnapshot snapshot) => MealsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MealsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MealsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MealsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MealsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMealsRecordData({
  int? id,
  String? mealName,
  double? mealCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'mealName': mealName,
      'mealCost': mealCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class MealsRecordDocumentEquality implements Equality<MealsRecord> {
  const MealsRecordDocumentEquality();

  @override
  bool equals(MealsRecord? e1, MealsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.mealName == e2?.mealName &&
        e1?.mealCost == e2?.mealCost;
  }

  @override
  int hash(MealsRecord? e) =>
      const ListEquality().hash([e?.id, e?.mealName, e?.mealCost]);

  @override
  bool isValidKey(Object? o) => o is MealsRecord;
}
