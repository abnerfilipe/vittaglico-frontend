// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AplicacaoInsulinaStruct extends BaseStruct {
  AplicacaoInsulinaStruct({
    String? id,
    double? quantidadeUnidades,
    String? dataHoraAplicacao,
    int? duracaoAcaoInsulinaEfetiva,
    UsuarioStruct? usuario,
    String? usuarioId,
    InsulinaStruct? insulinaAssociada,
    String? insulinaId,
  })  : _id = id,
        _quantidadeUnidades = quantidadeUnidades,
        _dataHoraAplicacao = dataHoraAplicacao,
        _duracaoAcaoInsulinaEfetiva = duracaoAcaoInsulinaEfetiva,
        _usuario = usuario,
        _usuarioId = usuarioId,
        _insulinaAssociada = insulinaAssociada,
        _insulinaId = insulinaId;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "quantidadeUnidades" field.
  double? _quantidadeUnidades;
  double get quantidadeUnidades => _quantidadeUnidades ?? 0.0;
  set quantidadeUnidades(double? val) => _quantidadeUnidades = val;

  void incrementQuantidadeUnidades(double amount) =>
      quantidadeUnidades = quantidadeUnidades + amount;

  bool hasQuantidadeUnidades() => _quantidadeUnidades != null;

  // "dataHoraAplicacao" field.
  String? _dataHoraAplicacao;
  String get dataHoraAplicacao => _dataHoraAplicacao ?? '';
  set dataHoraAplicacao(String? val) => _dataHoraAplicacao = val;

  bool hasDataHoraAplicacao() => _dataHoraAplicacao != null;

  // "duracaoAcaoInsulinaEfetiva" field.
  int? _duracaoAcaoInsulinaEfetiva;
  int get duracaoAcaoInsulinaEfetiva => _duracaoAcaoInsulinaEfetiva ?? 0;
  set duracaoAcaoInsulinaEfetiva(int? val) => _duracaoAcaoInsulinaEfetiva = val;

  void incrementDuracaoAcaoInsulinaEfetiva(int amount) =>
      duracaoAcaoInsulinaEfetiva = duracaoAcaoInsulinaEfetiva + amount;

  bool hasDuracaoAcaoInsulinaEfetiva() => _duracaoAcaoInsulinaEfetiva != null;

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

  // "insulinaAssociada" field.
  InsulinaStruct? _insulinaAssociada;
  InsulinaStruct get insulinaAssociada =>
      _insulinaAssociada ?? InsulinaStruct();
  set insulinaAssociada(InsulinaStruct? val) => _insulinaAssociada = val;

  void updateInsulinaAssociada(Function(InsulinaStruct) updateFn) {
    updateFn(_insulinaAssociada ??= InsulinaStruct());
  }

  bool hasInsulinaAssociada() => _insulinaAssociada != null;

  // "insulinaId" field.
  String? _insulinaId;
  String get insulinaId => _insulinaId ?? '';
  set insulinaId(String? val) => _insulinaId = val;

  bool hasInsulinaId() => _insulinaId != null;

  static AplicacaoInsulinaStruct fromMap(Map<String, dynamic> data) =>
      AplicacaoInsulinaStruct(
        id: data['id'] as String?,
        quantidadeUnidades: castToType<double>(data['quantidadeUnidades']),
        dataHoraAplicacao: data['dataHoraAplicacao'] as String?,
        duracaoAcaoInsulinaEfetiva:
            castToType<int>(data['duracaoAcaoInsulinaEfetiva']),
        usuario: data['usuario'] is UsuarioStruct
            ? data['usuario']
            : UsuarioStruct.maybeFromMap(data['usuario']),
        usuarioId: data['usuarioId'] as String?,
        insulinaAssociada: data['insulinaAssociada'] is InsulinaStruct
            ? data['insulinaAssociada']
            : InsulinaStruct.maybeFromMap(data['insulinaAssociada']),
        insulinaId: data['insulinaId'] as String?,
      );

  static AplicacaoInsulinaStruct? maybeFromMap(dynamic data) => data is Map
      ? AplicacaoInsulinaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'quantidadeUnidades': _quantidadeUnidades,
        'dataHoraAplicacao': _dataHoraAplicacao,
        'duracaoAcaoInsulinaEfetiva': _duracaoAcaoInsulinaEfetiva,
        'usuario': _usuario?.toMap(),
        'usuarioId': _usuarioId,
        'insulinaAssociada': _insulinaAssociada?.toMap(),
        'insulinaId': _insulinaId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'quantidadeUnidades': serializeParam(
          _quantidadeUnidades,
          ParamType.double,
        ),
        'dataHoraAplicacao': serializeParam(
          _dataHoraAplicacao,
          ParamType.String,
        ),
        'duracaoAcaoInsulinaEfetiva': serializeParam(
          _duracaoAcaoInsulinaEfetiva,
          ParamType.int,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.DataStruct,
        ),
        'usuarioId': serializeParam(
          _usuarioId,
          ParamType.String,
        ),
        'insulinaAssociada': serializeParam(
          _insulinaAssociada,
          ParamType.DataStruct,
        ),
        'insulinaId': serializeParam(
          _insulinaId,
          ParamType.String,
        ),
      }.withoutNulls;

  static AplicacaoInsulinaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AplicacaoInsulinaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        quantidadeUnidades: deserializeParam(
          data['quantidadeUnidades'],
          ParamType.double,
          false,
        ),
        dataHoraAplicacao: deserializeParam(
          data['dataHoraAplicacao'],
          ParamType.String,
          false,
        ),
        duracaoAcaoInsulinaEfetiva: deserializeParam(
          data['duracaoAcaoInsulinaEfetiva'],
          ParamType.int,
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
        insulinaAssociada: deserializeStructParam(
          data['insulinaAssociada'],
          ParamType.DataStruct,
          false,
          structBuilder: InsulinaStruct.fromSerializableMap,
        ),
        insulinaId: deserializeParam(
          data['insulinaId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AplicacaoInsulinaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AplicacaoInsulinaStruct &&
        id == other.id &&
        quantidadeUnidades == other.quantidadeUnidades &&
        dataHoraAplicacao == other.dataHoraAplicacao &&
        duracaoAcaoInsulinaEfetiva == other.duracaoAcaoInsulinaEfetiva &&
        usuario == other.usuario &&
        usuarioId == other.usuarioId &&
        insulinaAssociada == other.insulinaAssociada &&
        insulinaId == other.insulinaId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        quantidadeUnidades,
        dataHoraAplicacao,
        duracaoAcaoInsulinaEfetiva,
        usuario,
        usuarioId,
        insulinaAssociada,
        insulinaId
      ]);
}

AplicacaoInsulinaStruct createAplicacaoInsulinaStruct({
  String? id,
  double? quantidadeUnidades,
  String? dataHoraAplicacao,
  int? duracaoAcaoInsulinaEfetiva,
  UsuarioStruct? usuario,
  String? usuarioId,
  InsulinaStruct? insulinaAssociada,
  String? insulinaId,
}) =>
    AplicacaoInsulinaStruct(
      id: id,
      quantidadeUnidades: quantidadeUnidades,
      dataHoraAplicacao: dataHoraAplicacao,
      duracaoAcaoInsulinaEfetiva: duracaoAcaoInsulinaEfetiva,
      usuario: usuario ?? UsuarioStruct(),
      usuarioId: usuarioId,
      insulinaAssociada: insulinaAssociada ?? InsulinaStruct(),
      insulinaId: insulinaId,
    );
