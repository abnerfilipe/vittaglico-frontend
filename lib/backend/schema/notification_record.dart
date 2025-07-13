import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "EventRef" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  // "event_location" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_time" field.
  DateTime? _eventTime;
  DateTime? get eventTime => _eventTime;
  bool hasEventTime() => _eventTime != null;

  // "organiser_email" field.
  String? _organiserEmail;
  String get organiserEmail => _organiserEmail ?? '';
  bool hasOrganiserEmail() => _organiserEmail != null;

  // "event_des" field.
  String? _eventDes;
  String get eventDes => _eventDes ?? '';
  bool hasEventDes() => _eventDes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _eventName = snapshotData['event_name'] as String?;
    _eventRef = snapshotData['EventRef'] as DocumentReference?;
    _eventLocation = snapshotData['event_location'] as String?;
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventTime = snapshotData['event_time'] as DateTime?;
    _organiserEmail = snapshotData['organiser_email'] as String?;
    _eventDes = snapshotData['event_des'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notification')
          : FirebaseFirestore.instance.collectionGroup('notification');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notification').doc(id);

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  String? userName,
  String? userEmail,
  DocumentReference? userID,
  String? photoUrl,
  String? eventName,
  DocumentReference? eventRef,
  String? eventLocation,
  DateTime? eventDate,
  DateTime? eventTime,
  String? organiserEmail,
  String? eventDes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userEmail': userEmail,
      'userID': userID,
      'photo_url': photoUrl,
      'event_name': eventName,
      'EventRef': eventRef,
      'event_location': eventLocation,
      'event_date': eventDate,
      'event_time': eventTime,
      'organiser_email': organiserEmail,
      'event_des': eventDes,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userEmail == e2?.userEmail &&
        e1?.userID == e2?.userID &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.eventName == e2?.eventName &&
        e1?.eventRef == e2?.eventRef &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventTime == e2?.eventTime &&
        e1?.organiserEmail == e2?.organiserEmail &&
        e1?.eventDes == e2?.eventDes;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userEmail,
        e?.userID,
        e?.photoUrl,
        e?.eventName,
        e?.eventRef,
        e?.eventLocation,
        e?.eventDate,
        e?.eventTime,
        e?.organiserEmail,
        e?.eventDes
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
