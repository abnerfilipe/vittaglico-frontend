// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacaoStruct extends BaseStruct {
  NotificacaoStruct({
    String? id,
    String? mensagem,
    DateTime? createdAt,
  })  : _id = id,
        _mensagem = mensagem,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "mensagem" field.
  String? _mensagem;
  String get mensagem => _mensagem ?? '';
  set mensagem(String? val) => _mensagem = val;

  bool hasMensagem() => _mensagem != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static NotificacaoStruct fromMap(Map<String, dynamic> data) =>
      NotificacaoStruct(
        id: data['id'] as String?,
        mensagem: data['mensagem'] as String?,
        createdAt: data['createdAt'] as DateTime?,
      );

  static NotificacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'mensagem': _mensagem,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'mensagem': serializeParam(
          _mensagem,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static NotificacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificacaoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        mensagem: deserializeParam(
          data['mensagem'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'NotificacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificacaoStruct &&
        id == other.id &&
        mensagem == other.mensagem &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([id, mensagem, createdAt]);
}

NotificacaoStruct createNotificacaoStruct({
  String? id,
  String? mensagem,
  DateTime? createdAt,
}) =>
    NotificacaoStruct(
      id: id,
      mensagem: mensagem,
      createdAt: createdAt,
    );
