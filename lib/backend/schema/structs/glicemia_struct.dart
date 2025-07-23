// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GlicemiaStruct extends BaseStruct {
  GlicemiaStruct({
    String? id,
    String? usuarioId,
    int? valor,
    String? medida,
    String? dataHoraDeRegistro,
    String? createdAt,
    String? periodo,
    List<GlicemiaStruct>? glicemias,
  })  : _id = id,
        _usuarioId = usuarioId,
        _valor = valor,
        _medida = medida,
        _dataHoraDeRegistro = dataHoraDeRegistro,
        _createdAt = createdAt,
        _periodo = periodo,
        _glicemias = glicemias;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "usuarioId" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  set usuarioId(String? val) => _usuarioId = val;

  bool hasUsuarioId() => _usuarioId != null;

  // "valor" field.
  int? _valor;
  int get valor => _valor ?? 0;
  set valor(int? val) => _valor = val;

  void incrementValor(int amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "medida" field.
  String? _medida;
  String get medida => _medida ?? 'mg/dL';
  set medida(String? val) => _medida = val;

  bool hasMedida() => _medida != null;

  // "dataHoraDeRegistro" field.
  String? _dataHoraDeRegistro;
  String get dataHoraDeRegistro => _dataHoraDeRegistro ?? '';
  set dataHoraDeRegistro(String? val) => _dataHoraDeRegistro = val;

  bool hasDataHoraDeRegistro() => _dataHoraDeRegistro != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "periodo" field.
  String? _periodo;
  String get periodo => _periodo ?? '';
  set periodo(String? val) => _periodo = val;

  bool hasPeriodo() => _periodo != null;

  // "glicemias" field.
  List<GlicemiaStruct>? _glicemias;
  List<GlicemiaStruct> get glicemias => _glicemias ?? const [];
  set glicemias(List<GlicemiaStruct>? val) => _glicemias = val;

  void updateGlicemias(Function(List<GlicemiaStruct>) updateFn) {
    updateFn(_glicemias ??= []);
  }

  bool hasGlicemias() => _glicemias != null;

  static GlicemiaStruct fromMap(Map<String, dynamic> data) => GlicemiaStruct(
        id: data['id'] as String?,
        usuarioId: data['usuarioId'] as String?,
        valor: castToType<int>(data['valor']),
        medida: data['medida'] as String?,
        dataHoraDeRegistro: data['dataHoraDeRegistro'] as String?,
        createdAt: data['createdAt'] as String?,
        periodo: data['periodo'] as String?,
        glicemias: getStructList(
          data['glicemias'],
          GlicemiaStruct.fromMap,
        ),
      );

  static GlicemiaStruct? maybeFromMap(dynamic data) =>
      data is Map ? GlicemiaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'usuarioId': _usuarioId,
        'valor': _valor,
        'medida': _medida,
        'dataHoraDeRegistro': _dataHoraDeRegistro,
        'createdAt': _createdAt,
        'periodo': _periodo,
        'glicemias': _glicemias?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'usuarioId': serializeParam(
          _usuarioId,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.int,
        ),
        'medida': serializeParam(
          _medida,
          ParamType.String,
        ),
        'dataHoraDeRegistro': serializeParam(
          _dataHoraDeRegistro,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'periodo': serializeParam(
          _periodo,
          ParamType.String,
        ),
        'glicemias': serializeParam(
          _glicemias,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GlicemiaStruct fromSerializableMap(Map<String, dynamic> data) =>
      GlicemiaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        usuarioId: deserializeParam(
          data['usuarioId'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.int,
          false,
        ),
        medida: deserializeParam(
          data['medida'],
          ParamType.String,
          false,
        ),
        dataHoraDeRegistro: deserializeParam(
          data['dataHoraDeRegistro'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        periodo: deserializeParam(
          data['periodo'],
          ParamType.String,
          false,
        ),
        glicemias: deserializeStructParam<GlicemiaStruct>(
          data['glicemias'],
          ParamType.DataStruct,
          true,
          structBuilder: GlicemiaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GlicemiaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GlicemiaStruct &&
        id == other.id &&
        usuarioId == other.usuarioId &&
        valor == other.valor &&
        medida == other.medida &&
        dataHoraDeRegistro == other.dataHoraDeRegistro &&
        createdAt == other.createdAt &&
        periodo == other.periodo &&
        listEquality.equals(glicemias, other.glicemias);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        usuarioId,
        valor,
        medida,
        dataHoraDeRegistro,
        createdAt,
        periodo,
        glicemias
      ]);
}

GlicemiaStruct createGlicemiaStruct({
  String? id,
  String? usuarioId,
  int? valor,
  String? medida,
  String? dataHoraDeRegistro,
  String? createdAt,
  String? periodo,
}) =>
    GlicemiaStruct(
      id: id,
      usuarioId: usuarioId,
      valor: valor,
      medida: medida,
      dataHoraDeRegistro: dataHoraDeRegistro,
      createdAt: createdAt,
      periodo: periodo,
    );
