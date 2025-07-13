// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InvitecheckStruct extends FFFirebaseStruct {
  InvitecheckStruct({
    DocumentReference? userID,
    bool? check,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userID = userID,
        _check = check,
        super(firestoreUtilData);

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  set userID(DocumentReference? val) => _userID = val;

  bool hasUserID() => _userID != null;

  // "check" field.
  bool? _check;
  bool get check => _check ?? false;
  set check(bool? val) => _check = val;

  bool hasCheck() => _check != null;

  static InvitecheckStruct fromMap(Map<String, dynamic> data) =>
      InvitecheckStruct(
        userID: data['userID'] as DocumentReference?,
        check: data['check'] as bool?,
      );

  static InvitecheckStruct? maybeFromMap(dynamic data) => data is Map
      ? InvitecheckStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userID': _userID,
        'check': _check,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userID': serializeParam(
          _userID,
          ParamType.DocumentReference,
        ),
        'check': serializeParam(
          _check,
          ParamType.bool,
        ),
      }.withoutNulls;

  static InvitecheckStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvitecheckStruct(
        userID: deserializeParam(
          data['userID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
        check: deserializeParam(
          data['check'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'InvitecheckStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvitecheckStruct &&
        userID == other.userID &&
        check == other.check;
  }

  @override
  int get hashCode => const ListEquality().hash([userID, check]);
}

InvitecheckStruct createInvitecheckStruct({
  DocumentReference? userID,
  bool? check,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InvitecheckStruct(
      userID: userID,
      check: check,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InvitecheckStruct? updateInvitecheckStruct(
  InvitecheckStruct? invitecheck, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    invitecheck
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInvitecheckStructData(
  Map<String, dynamic> firestoreData,
  InvitecheckStruct? invitecheck,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (invitecheck == null) {
    return;
  }
  if (invitecheck.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && invitecheck.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final invitecheckData =
      getInvitecheckFirestoreData(invitecheck, forFieldValue);
  final nestedData =
      invitecheckData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = invitecheck.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInvitecheckFirestoreData(
  InvitecheckStruct? invitecheck, [
  bool forFieldValue = false,
]) {
  if (invitecheck == null) {
    return {};
  }
  final firestoreData = mapToFirestore(invitecheck.toMap());

  // Add any Firestore field values
  invitecheck.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInvitecheckListFirestoreData(
  List<InvitecheckStruct>? invitechecks,
) =>
    invitechecks?.map((e) => getInvitecheckFirestoreData(e, true)).toList() ??
    [];
