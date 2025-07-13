import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserEventsRecord extends FirestoreRecord {
  UserEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_time" field.
  DateTime? _eventTime;
  DateTime? get eventTime => _eventTime;
  bool hasEventTime() => _eventTime != null;

  // "about_event" field.
  String? _aboutEvent;
  String get aboutEvent => _aboutEvent ?? '';
  bool hasAboutEvent() => _aboutEvent != null;

  // "event_location" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "event_email" field.
  String? _eventEmail;
  String get eventEmail => _eventEmail ?? '';
  bool hasEventEmail() => _eventEmail != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "people" field.
  List<DocumentReference>? _people;
  List<DocumentReference> get people => _people ?? const [];
  bool hasPeople() => _people != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventTime = snapshotData['event_time'] as DateTime?;
    _aboutEvent = snapshotData['about_event'] as String?;
    _eventLocation = snapshotData['event_location'] as String?;
    _eventEmail = snapshotData['event_email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _people = getDataList(snapshotData['people']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_events')
          : FirebaseFirestore.instance.collectionGroup('user_events');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_events').doc(id);

  static Stream<UserEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserEventsRecord.fromSnapshot(s));

  static Future<UserEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserEventsRecord.fromSnapshot(s));

  static UserEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserEventsRecordData({
  String? eventName,
  DateTime? eventDate,
  DateTime? eventTime,
  String? aboutEvent,
  String? eventLocation,
  String? eventEmail,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'event_date': eventDate,
      'event_time': eventTime,
      'about_event': aboutEvent,
      'event_location': eventLocation,
      'event_email': eventEmail,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserEventsRecordDocumentEquality implements Equality<UserEventsRecord> {
  const UserEventsRecordDocumentEquality();

  @override
  bool equals(UserEventsRecord? e1, UserEventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventName == e2?.eventName &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventTime == e2?.eventTime &&
        e1?.aboutEvent == e2?.aboutEvent &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventEmail == e2?.eventEmail &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.people, e2?.people);
  }

  @override
  int hash(UserEventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.eventDate,
        e?.eventTime,
        e?.aboutEvent,
        e?.eventLocation,
        e?.eventEmail,
        e?.photoUrl,
        e?.people
      ]);

  @override
  bool isValidKey(Object? o) => o is UserEventsRecord;
}
