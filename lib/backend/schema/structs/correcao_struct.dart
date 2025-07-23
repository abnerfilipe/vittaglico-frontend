// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CorrecaoStruct extends BaseStruct {
  CorrecaoStruct({
    String? message,
    int? bolus,
  })  : _message = message,
        _bolus = bolus;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "bolus" field.
  int? _bolus;
  int get bolus => _bolus ?? 0;
  set bolus(int? val) => _bolus = val;

  void incrementBolus(int amount) => bolus = bolus + amount;

  bool hasBolus() => _bolus != null;

  static CorrecaoStruct fromMap(Map<String, dynamic> data) => CorrecaoStruct(
        message: data['message'] as String?,
        bolus: castToType<int>(data['bolus']),
      );

  static CorrecaoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CorrecaoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'bolus': _bolus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'bolus': serializeParam(
          _bolus,
          ParamType.int,
        ),
      }.withoutNulls;

  static CorrecaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CorrecaoStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        bolus: deserializeParam(
          data['bolus'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CorrecaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CorrecaoStruct &&
        message == other.message &&
        bolus == other.bolus;
  }

  @override
  int get hashCode => const ListEquality().hash([message, bolus]);
}

CorrecaoStruct createCorrecaoStruct({
  String? message,
  int? bolus,
}) =>
    CorrecaoStruct(
      message: message,
      bolus: bolus,
    );
