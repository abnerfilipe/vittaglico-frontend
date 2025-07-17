// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    String? id,
    String? nome,
    String? email,
    String? senha,
    String? telefone,
    String? dataDeNascimento,
    bool? aceiteTermosCondicoes,
    bool? aceitePoliticaDePrivacidade,
    UsuarioStruct? userJSON,
  })  : _id = id,
        _nome = nome,
        _email = email,
        _senha = senha,
        _telefone = telefone,
        _dataDeNascimento = dataDeNascimento,
        _aceiteTermosCondicoes = aceiteTermosCondicoes,
        _aceitePoliticaDePrivacidade = aceitePoliticaDePrivacidade,
        _userJSON = userJSON;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  set senha(String? val) => _senha = val;

  bool hasSenha() => _senha != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "dataDeNascimento" field.
  String? _dataDeNascimento;
  String get dataDeNascimento => _dataDeNascimento ?? '';
  set dataDeNascimento(String? val) => _dataDeNascimento = val;

  bool hasDataDeNascimento() => _dataDeNascimento != null;

  // "aceiteTermosCondicoes" field.
  bool? _aceiteTermosCondicoes;
  bool get aceiteTermosCondicoes => _aceiteTermosCondicoes ?? true;
  set aceiteTermosCondicoes(bool? val) => _aceiteTermosCondicoes = val;

  bool hasAceiteTermosCondicoes() => _aceiteTermosCondicoes != null;

  // "aceitePoliticaDePrivacidade" field.
  bool? _aceitePoliticaDePrivacidade;
  bool get aceitePoliticaDePrivacidade => _aceitePoliticaDePrivacidade ?? true;
  set aceitePoliticaDePrivacidade(bool? val) =>
      _aceitePoliticaDePrivacidade = val;

  bool hasAceitePoliticaDePrivacidade() => _aceitePoliticaDePrivacidade != null;

  // "userJSON" field.
  UsuarioStruct? _userJSON;
  UsuarioStruct get userJSON => _userJSON ?? UsuarioStruct();
  set userJSON(UsuarioStruct? val) => _userJSON = val;

  void updateUserJSON(Function(UsuarioStruct) updateFn) {
    updateFn(_userJSON ??= UsuarioStruct());
  }

  bool hasUserJSON() => _userJSON != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        id: data['id'] as String?,
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        senha: data['senha'] as String?,
        telefone: data['telefone'] as String?,
        dataDeNascimento: data['dataDeNascimento'] as String?,
        aceiteTermosCondicoes: data['aceiteTermosCondicoes'] as bool?,
        aceitePoliticaDePrivacidade:
            data['aceitePoliticaDePrivacidade'] as bool?,
        userJSON: data['userJSON'] is UsuarioStruct
            ? data['userJSON']
            : UsuarioStruct.maybeFromMap(data['userJSON']),
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'email': _email,
        'senha': _senha,
        'telefone': _telefone,
        'dataDeNascimento': _dataDeNascimento,
        'aceiteTermosCondicoes': _aceiteTermosCondicoes,
        'aceitePoliticaDePrivacidade': _aceitePoliticaDePrivacidade,
        'userJSON': _userJSON?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'senha': serializeParam(
          _senha,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'dataDeNascimento': serializeParam(
          _dataDeNascimento,
          ParamType.String,
        ),
        'aceiteTermosCondicoes': serializeParam(
          _aceiteTermosCondicoes,
          ParamType.bool,
        ),
        'aceitePoliticaDePrivacidade': serializeParam(
          _aceitePoliticaDePrivacidade,
          ParamType.bool,
        ),
        'userJSON': serializeParam(
          _userJSON,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        senha: deserializeParam(
          data['senha'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        dataDeNascimento: deserializeParam(
          data['dataDeNascimento'],
          ParamType.String,
          false,
        ),
        aceiteTermosCondicoes: deserializeParam(
          data['aceiteTermosCondicoes'],
          ParamType.bool,
          false,
        ),
        aceitePoliticaDePrivacidade: deserializeParam(
          data['aceitePoliticaDePrivacidade'],
          ParamType.bool,
          false,
        ),
        userJSON: deserializeStructParam(
          data['userJSON'],
          ParamType.DataStruct,
          false,
          structBuilder: UsuarioStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct &&
        id == other.id &&
        nome == other.nome &&
        email == other.email &&
        senha == other.senha &&
        telefone == other.telefone &&
        dataDeNascimento == other.dataDeNascimento &&
        aceiteTermosCondicoes == other.aceiteTermosCondicoes &&
        aceitePoliticaDePrivacidade == other.aceitePoliticaDePrivacidade &&
        userJSON == other.userJSON;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        email,
        senha,
        telefone,
        dataDeNascimento,
        aceiteTermosCondicoes,
        aceitePoliticaDePrivacidade,
        userJSON
      ]);
}

UsuarioStruct createUsuarioStruct({
  String? id,
  String? nome,
  String? email,
  String? senha,
  String? telefone,
  String? dataDeNascimento,
  bool? aceiteTermosCondicoes,
  bool? aceitePoliticaDePrivacidade,
  UsuarioStruct? userJSON,
}) =>
    UsuarioStruct(
      id: id,
      nome: nome,
      email: email,
      senha: senha,
      telefone: telefone,
      dataDeNascimento: dataDeNascimento,
      aceiteTermosCondicoes: aceiteTermosCondicoes,
      aceitePoliticaDePrivacidade: aceitePoliticaDePrivacidade,
      userJSON: userJSON ?? UsuarioStruct(),
    );
