// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfiguracoesInsulinaStruct extends BaseStruct {
  ConfiguracoesInsulinaStruct({
    String? glicoseAlvo,
    String? fatorSensibilidadeInsulina,
  })  : _glicoseAlvo = glicoseAlvo,
        _fatorSensibilidadeInsulina = fatorSensibilidadeInsulina;

  // "glicoseAlvo" field.
  String? _glicoseAlvo;
  String get glicoseAlvo => _glicoseAlvo ?? '';
  set glicoseAlvo(String? val) => _glicoseAlvo = val;

  bool hasGlicoseAlvo() => _glicoseAlvo != null;

  // "fatorSensibilidadeInsulina" field.
  String? _fatorSensibilidadeInsulina;
  String get fatorSensibilidadeInsulina => _fatorSensibilidadeInsulina ?? '';
  set fatorSensibilidadeInsulina(String? val) =>
      _fatorSensibilidadeInsulina = val;

  bool hasFatorSensibilidadeInsulina() => _fatorSensibilidadeInsulina != null;

  static ConfiguracoesInsulinaStruct fromMap(Map<String, dynamic> data) =>
      ConfiguracoesInsulinaStruct(
        glicoseAlvo: data['glicoseAlvo'] as String?,
        fatorSensibilidadeInsulina:
            data['fatorSensibilidadeInsulina'] as String?,
      );

  static ConfiguracoesInsulinaStruct? maybeFromMap(dynamic data) => data is Map
      ? ConfiguracoesInsulinaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'glicoseAlvo': _glicoseAlvo,
        'fatorSensibilidadeInsulina': _fatorSensibilidadeInsulina,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'glicoseAlvo': serializeParam(
          _glicoseAlvo,
          ParamType.String,
        ),
        'fatorSensibilidadeInsulina': serializeParam(
          _fatorSensibilidadeInsulina,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConfiguracoesInsulinaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ConfiguracoesInsulinaStruct(
        glicoseAlvo: deserializeParam(
          data['glicoseAlvo'],
          ParamType.String,
          false,
        ),
        fatorSensibilidadeInsulina: deserializeParam(
          data['fatorSensibilidadeInsulina'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConfiguracoesInsulinaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfiguracoesInsulinaStruct &&
        glicoseAlvo == other.glicoseAlvo &&
        fatorSensibilidadeInsulina == other.fatorSensibilidadeInsulina;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([glicoseAlvo, fatorSensibilidadeInsulina]);
}

ConfiguracoesInsulinaStruct createConfiguracoesInsulinaStruct({
  String? glicoseAlvo,
  String? fatorSensibilidadeInsulina,
}) =>
    ConfiguracoesInsulinaStruct(
      glicoseAlvo: glicoseAlvo,
      fatorSensibilidadeInsulina: fatorSensibilidadeInsulina,
    );
