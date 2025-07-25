// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SugestaoLocalRodizioStruct extends BaseStruct {
  SugestaoLocalRodizioStruct({
    String? local,
    String? lado,
    String? quadrante,
    String? ultimoUso,
    String? descricaoCompleta,
  })  : _local = local,
        _lado = lado,
        _quadrante = quadrante,
        _ultimoUso = ultimoUso,
        _descricaoCompleta = descricaoCompleta;

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  set local(String? val) => _local = val;

  bool hasLocal() => _local != null;

  // "lado" field.
  String? _lado;
  String get lado => _lado ?? '';
  set lado(String? val) => _lado = val;

  bool hasLado() => _lado != null;

  // "quadrante" field.
  String? _quadrante;
  String get quadrante => _quadrante ?? '';
  set quadrante(String? val) => _quadrante = val;

  bool hasQuadrante() => _quadrante != null;

  // "ultimoUso" field.
  String? _ultimoUso;
  String get ultimoUso => _ultimoUso ?? '';
  set ultimoUso(String? val) => _ultimoUso = val;

  bool hasUltimoUso() => _ultimoUso != null;

  // "descricaoCompleta" field.
  String? _descricaoCompleta;
  String get descricaoCompleta => _descricaoCompleta ?? '';
  set descricaoCompleta(String? val) => _descricaoCompleta = val;

  bool hasDescricaoCompleta() => _descricaoCompleta != null;

  static SugestaoLocalRodizioStruct fromMap(Map<String, dynamic> data) =>
      SugestaoLocalRodizioStruct(
        local: data['local'] as String?,
        lado: data['lado'] as String?,
        quadrante: data['quadrante'] as String?,
        ultimoUso: data['ultimoUso'] as String?,
        descricaoCompleta: data['descricaoCompleta'] as String?,
      );

  static SugestaoLocalRodizioStruct? maybeFromMap(dynamic data) => data is Map
      ? SugestaoLocalRodizioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'local': _local,
        'lado': _lado,
        'quadrante': _quadrante,
        'ultimoUso': _ultimoUso,
        'descricaoCompleta': _descricaoCompleta,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'local': serializeParam(
          _local,
          ParamType.String,
        ),
        'lado': serializeParam(
          _lado,
          ParamType.String,
        ),
        'quadrante': serializeParam(
          _quadrante,
          ParamType.String,
        ),
        'ultimoUso': serializeParam(
          _ultimoUso,
          ParamType.String,
        ),
        'descricaoCompleta': serializeParam(
          _descricaoCompleta,
          ParamType.String,
        ),
      }.withoutNulls;

  static SugestaoLocalRodizioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SugestaoLocalRodizioStruct(
        local: deserializeParam(
          data['local'],
          ParamType.String,
          false,
        ),
        lado: deserializeParam(
          data['lado'],
          ParamType.String,
          false,
        ),
        quadrante: deserializeParam(
          data['quadrante'],
          ParamType.String,
          false,
        ),
        ultimoUso: deserializeParam(
          data['ultimoUso'],
          ParamType.String,
          false,
        ),
        descricaoCompleta: deserializeParam(
          data['descricaoCompleta'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SugestaoLocalRodizioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SugestaoLocalRodizioStruct &&
        local == other.local &&
        lado == other.lado &&
        quadrante == other.quadrante &&
        ultimoUso == other.ultimoUso &&
        descricaoCompleta == other.descricaoCompleta;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([local, lado, quadrante, ultimoUso, descricaoCompleta]);
}

SugestaoLocalRodizioStruct createSugestaoLocalRodizioStruct({
  String? local,
  String? lado,
  String? quadrante,
  String? ultimoUso,
  String? descricaoCompleta,
}) =>
    SugestaoLocalRodizioStruct(
      local: local,
      lado: lado,
      quadrante: quadrante,
      ultimoUso: ultimoUso,
      descricaoCompleta: descricaoCompleta,
    );
