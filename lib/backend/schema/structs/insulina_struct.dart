// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InsulinaStruct extends BaseStruct {
  InsulinaStruct({
    String? id,
    String? nome,
    String? tipoBasalCorrecao,
    double? duracaoAcaoHoras,
    double? picoAcaoHoras,
    UsuarioStruct? usuario,
    String? usuarioId,
    List<AplicacaoInsulinaStruct>? aplicacoes,
  })  : _id = id,
        _nome = nome,
        _tipoBasalCorrecao = tipoBasalCorrecao,
        _duracaoAcaoHoras = duracaoAcaoHoras,
        _picoAcaoHoras = picoAcaoHoras,
        _usuario = usuario,
        _usuarioId = usuarioId,
        _aplicacoes = aplicacoes;

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

  // "tipoBasalCorrecao" field.
  String? _tipoBasalCorrecao;
  String get tipoBasalCorrecao => _tipoBasalCorrecao ?? '';
  set tipoBasalCorrecao(String? val) => _tipoBasalCorrecao = val;

  bool hasTipoBasalCorrecao() => _tipoBasalCorrecao != null;

  // "duracaoAcaoHoras" field.
  double? _duracaoAcaoHoras;
  double get duracaoAcaoHoras => _duracaoAcaoHoras ?? 0.0;
  set duracaoAcaoHoras(double? val) => _duracaoAcaoHoras = val;

  void incrementDuracaoAcaoHoras(double amount) =>
      duracaoAcaoHoras = duracaoAcaoHoras + amount;

  bool hasDuracaoAcaoHoras() => _duracaoAcaoHoras != null;

  // "picoAcaoHoras" field.
  double? _picoAcaoHoras;
  double get picoAcaoHoras => _picoAcaoHoras ?? 0.0;
  set picoAcaoHoras(double? val) => _picoAcaoHoras = val;

  void incrementPicoAcaoHoras(double amount) =>
      picoAcaoHoras = picoAcaoHoras + amount;

  bool hasPicoAcaoHoras() => _picoAcaoHoras != null;

  // "usuario" field.
  UsuarioStruct? _usuario;
  UsuarioStruct get usuario => _usuario ?? UsuarioStruct();
  set usuario(UsuarioStruct? val) => _usuario = val;

  void updateUsuario(Function(UsuarioStruct) updateFn) {
    updateFn(_usuario ??= UsuarioStruct());
  }

  bool hasUsuario() => _usuario != null;

  // "usuarioId" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  set usuarioId(String? val) => _usuarioId = val;

  bool hasUsuarioId() => _usuarioId != null;

  // "aplicacoes" field.
  List<AplicacaoInsulinaStruct>? _aplicacoes;
  List<AplicacaoInsulinaStruct> get aplicacoes => _aplicacoes ?? const [];
  set aplicacoes(List<AplicacaoInsulinaStruct>? val) => _aplicacoes = val;

  void updateAplicacoes(Function(List<AplicacaoInsulinaStruct>) updateFn) {
    updateFn(_aplicacoes ??= []);
  }

  bool hasAplicacoes() => _aplicacoes != null;

  static InsulinaStruct fromMap(Map<String, dynamic> data) => InsulinaStruct(
        id: data['id'] as String?,
        nome: data['nome'] as String?,
        tipoBasalCorrecao: data['tipoBasalCorrecao'] as String?,
        duracaoAcaoHoras: castToType<double>(data['duracaoAcaoHoras']),
        picoAcaoHoras: castToType<double>(data['picoAcaoHoras']),
        usuario: data['usuario'] is UsuarioStruct
            ? data['usuario']
            : UsuarioStruct.maybeFromMap(data['usuario']),
        usuarioId: data['usuarioId'] as String?,
        aplicacoes: getStructList(
          data['aplicacoes'],
          AplicacaoInsulinaStruct.fromMap,
        ),
      );

  static InsulinaStruct? maybeFromMap(dynamic data) =>
      data is Map ? InsulinaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'tipoBasalCorrecao': _tipoBasalCorrecao,
        'duracaoAcaoHoras': _duracaoAcaoHoras,
        'picoAcaoHoras': _picoAcaoHoras,
        'usuario': _usuario?.toMap(),
        'usuarioId': _usuarioId,
        'aplicacoes': _aplicacoes?.map((e) => e.toMap()).toList(),
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
        'tipoBasalCorrecao': serializeParam(
          _tipoBasalCorrecao,
          ParamType.String,
        ),
        'duracaoAcaoHoras': serializeParam(
          _duracaoAcaoHoras,
          ParamType.double,
        ),
        'picoAcaoHoras': serializeParam(
          _picoAcaoHoras,
          ParamType.double,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DataStruct,
        ),
        'usuarioId': serializeParam(
          _usuarioId,
          ParamType.String,
        ),
        'aplicacoes': serializeParam(
          _aplicacoes,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static InsulinaStruct fromSerializableMap(Map<String, dynamic> data) =>
      InsulinaStruct(
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
        tipoBasalCorrecao: deserializeParam(
          data['tipoBasalCorrecao'],
          ParamType.String,
          false,
        ),
        duracaoAcaoHoras: deserializeParam(
          data['duracaoAcaoHoras'],
          ParamType.double,
          false,
        ),
        picoAcaoHoras: deserializeParam(
          data['picoAcaoHoras'],
          ParamType.double,
          false,
        ),
        usuario: deserializeStructParam(
          data['usuario'],
          ParamType.DataStruct,
          false,
          structBuilder: UsuarioStruct.fromSerializableMap,
        ),
        usuarioId: deserializeParam(
          data['usuarioId'],
          ParamType.String,
          false,
        ),
        aplicacoes: deserializeStructParam<AplicacaoInsulinaStruct>(
          data['aplicacoes'],
          ParamType.DataStruct,
          true,
          structBuilder: AplicacaoInsulinaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'InsulinaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InsulinaStruct &&
        id == other.id &&
        nome == other.nome &&
        tipoBasalCorrecao == other.tipoBasalCorrecao &&
        duracaoAcaoHoras == other.duracaoAcaoHoras &&
        picoAcaoHoras == other.picoAcaoHoras &&
        usuario == other.usuario &&
        usuarioId == other.usuarioId &&
        listEquality.equals(aplicacoes, other.aplicacoes);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        tipoBasalCorrecao,
        duracaoAcaoHoras,
        picoAcaoHoras,
        usuario,
        usuarioId,
        aplicacoes
      ]);
}

InsulinaStruct createInsulinaStruct({
  String? id,
  String? nome,
  String? tipoBasalCorrecao,
  double? duracaoAcaoHoras,
  double? picoAcaoHoras,
  UsuarioStruct? usuario,
  String? usuarioId,
}) =>
    InsulinaStruct(
      id: id,
      nome: nome,
      tipoBasalCorrecao: tipoBasalCorrecao,
      duracaoAcaoHoras: duracaoAcaoHoras,
      picoAcaoHoras: picoAcaoHoras,
      usuario: usuario ?? UsuarioStruct(),
      usuarioId: usuarioId,
    );
