import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start VittaglicoBackendaDevelopment Group Code

class VittaglicoBackendaDevelopmentGroup {
  static String getBaseUrl() => 'http://localhost:3000';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
  static CadastroUsuarioCall cadastroUsuarioCall = CadastroUsuarioCall();
  static ProfileCall profileCall = ProfileCall();
  static ListarUsuariosCall listarUsuariosCall = ListarUsuariosCall();
  static AtualizarUsuarioCall atualizarUsuarioCall = AtualizarUsuarioCall();
  static AtualizarUsuarioTelefoneDataDeNascimentoCall
      atualizarUsuarioTelefoneDataDeNascimentoCall =
      AtualizarUsuarioTelefoneDataDeNascimentoCall();
  static ValidateAuthorizationCall validateAuthorizationCall =
      ValidateAuthorizationCall();
  static ListarGlicemiasDoUsuarioCall listarGlicemiasDoUsuarioCall =
      ListarGlicemiasDoUsuarioCall();
  static AdicionarGlicemiaUsuarioCall adicionarGlicemiaUsuarioCall =
      AdicionarGlicemiaUsuarioCall();
  static ListarInsulinaUsuarioCall listarInsulinaUsuarioCall =
      ListarInsulinaUsuarioCall();
  static ListarAplicacaoInsulinaUsuarioCall listarAplicacaoInsulinaUsuarioCall =
      ListarAplicacaoInsulinaUsuarioCall();
  static CriarAplicacaoInsulinaCall criarAplicacaoInsulinaCall =
      CriarAplicacaoInsulinaCall();
  static CalcularBolusDeCorrecaoCall calcularBolusDeCorrecaoCall =
      CalcularBolusDeCorrecaoCall();
  static CriarInsulinaCall criarInsulinaCall = CriarInsulinaCall();
  static ObterLocaisRodizioDisponiveisCall obterLocaisRodizioDisponiveisCall =
      ObterLocaisRodizioDisponiveisCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email":"${escapeStringForJson(email)}" ,
  "password": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${baseUrl}/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastroUsuarioCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? telefone = '',
    String? dataDeNascimento = '',
    bool? aceiteTermosCondicoes = true,
    bool? aceitePoliticaDePrivacidade = true,
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "senha": "${escapeStringForJson(senha)}",
  "telefone": "${escapeStringForJson(telefone)}",
  "dataDeNascimento": "${escapeStringForJson(dataDeNascimento)}",
   "aceiteTermosCondicoes": "${aceiteTermosCondicoes}",
  "aceitePoliticaDePrivacidade": "${aceitePoliticaDePrivacidade}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastroUsuario',
      apiUrl: '${baseUrl}/usuario',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProfileCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'profile',
      apiUrl: '${baseUrl}/auth/profile',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic userJSON(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.telefone''',
      ));
  String? dataDeNascimento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dataDeNascimento''',
      ));
  bool? aceiteTermosCondicoes(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.aceiteTermosCondicoes''',
      ));
  bool? aceitePoliticaDePrivacidade(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.aceitePoliticaDePrivacidade''',
      ));
  dynamic configuracoesInsulina(dynamic response) => getJsonField(
        response,
        r'''$.configuracoesInsulina''',
      );
  String? glicoseAlvo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.configuracoesInsulina.glicoseAlvo''',
      ));
  String? fatorSensibilidadeInsulina(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.configuracoesInsulina.fatorSensibilidadeInsulina''',
      ));
}

class ListarUsuariosCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listarUsuarios',
      apiUrl: '${baseUrl}/usuario',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mensagem''',
      ));
  List? usuarios(dynamic response) => getJsonField(
        response,
        r'''$.usuarios''',
        true,
      ) as List?;
  String? usuariosId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarios[:].id''',
      ));
  String? usuariosNome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarios[:].nome''',
      ));
  String? usuariosEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarios[:].email''',
      ));
  dynamic usuariosCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.usuarios[:].createdAt''',
      );
  dynamic usuariosUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.usuarios[:].updatedAt''',
      );
  String? usuariosTelefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarios[:].telefone''',
      ));
  dynamic usuariosDataDeNascimento(dynamic response) => getJsonField(
        response,
        r'''$.usuarios[:].dataDeNascimento''',
      );
}

class AtualizarUsuarioCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? telefone = '',
    String? dataDeNascimento = '',
    String? fatorSensibilidadeInsulina = '',
    String? glicoseAlvo = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "telefone": "${escapeStringForJson(telefone)}",
  "dataDeNascimento": "${escapeStringForJson(dataDeNascimento)}",
  "configuracoesInsulina": {
    "glicoseAlvo": "${escapeStringForJson(glicoseAlvo)}",
    "fatorSensibilidadeInsulina": "${escapeStringForJson(fatorSensibilidadeInsulina)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'atualizarUsuario',
      apiUrl: '${baseUrl}/usuario',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic usuario(dynamic response) => getJsonField(
        response,
        r'''$.usuario''',
      );
  String? messagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messagem''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.email''',
      ));
  String? dataDeNascimento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.dataDeNascimento''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.telefone''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.updatedAt''',
      ));
  dynamic configuracoesInsulina(dynamic response) => getJsonField(
        response,
        r'''$.usuario.configuracoesInsulina''',
      );
  String? glicoseAlvo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.configuracoesInsulina.glicoseAlvo''',
      ));
  String? fatorSensibilidadeInsulina(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.usuario.configuracoesInsulina.fatorSensibilidadeInsulina''',
      ));
}

class AtualizarUsuarioTelefoneDataDeNascimentoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? telefone = '',
    String? dataDeNascimento = '',
    int? glicoseAlvo,
    int? fatorSensibilidadeInsulina,
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "telefone": "${escapeStringForJson(telefone)}",
  "dataDeNascimento": "${escapeStringForJson(dataDeNascimento)}",
  "configuracoesInsulina": {
    "glicoseAlvo": ${glicoseAlvo},
    "fatorSensibilidadeInsulina": ${fatorSensibilidadeInsulina}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'atualizarUsuarioTelefoneDataDeNascimento',
      apiUrl: '${baseUrl}/usuario',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateAuthorizationCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'validateAuthorization',
      apiUrl: '${baseUrl}/auth/validate',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? valid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
}

class ListarGlicemiasDoUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listarGlicemiasDoUsuario',
      apiUrl: '${baseUrl}/glicemia/usuario/${usuarioId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? valor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor''',
      ));
  String? medida(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].medida''',
      ));
  String? periodo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].periodo''',
      ));
  String? dataHoraDeRegistro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].dataHoraDeRegistro''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updatedAt''',
      ));
  dynamic glicemias(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class AdicionarGlicemiaUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
    int? valor,
    String? medida = 'mg/dL',
    String? periodo = '',
    String? dataHoraDeRegistro = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "usuarioId": "${escapeStringForJson(usuarioId)}",
  "valor": ${valor},
  "medida": "${escapeStringForJson(medida)}",
  "periodo": "${escapeStringForJson(periodo)}",
  "dataHoraDeRegistro": "${escapeStringForJson(dataHoraDeRegistro)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adicionarGlicemiaUsuario',
      apiUrl: '${baseUrl}/glicemia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? messagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messagem''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.id''',
      ));
  dynamic usuarioJSON(dynamic response) => getJsonField(
        response,
        r'''$.glicemia.usuario''',
      );
  String? usuarioId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.usuario.id''',
      ));
  int? valor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.glicemia.valor''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.updatedAt''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.createdAt''',
      ));
  String? dataHoraDeRegistro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.glicemia.dataHoraDeRegistro''',
      ));
  String? periodo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.periodo''',
      ));
  String? medida(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.glicemia.medida''',
      ));
  dynamic glicemiaJSON(dynamic response) => getJsonField(
        response,
        r'''$.glicemia''',
      );
}

class ListarInsulinaUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listarInsulinaUsuario',
      apiUrl: '${baseUrl}/insulina/usuario/${usuarioId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? tipoBasalBolus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipoBasalCorrecao''',
      ));
  int? duracaoAcaoHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].duracaoAcaoHoras''',
      ));
  double? picoAcaoHoras(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].picoAcaoHoras''',
      ));
  String? usuarioId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].usuarioId''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? insulinas(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ListarAplicacaoInsulinaUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listarAplicacaoInsulinaUsuario',
      apiUrl: '${baseUrl}/aplicacao-insulina/usuario/${usuarioId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? aplicacoesInsulinas(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? quantidadeUnidades(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quantidadeUnidades''',
      ));
  String? dataHoraAplicacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].dataHoraAplicacao''',
      ));
  String? usuarioId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].usuarioId''',
      ));
  String? insulinaId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].insulinaId''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? tipoBasalBolus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipoBasalBolus''',
      ));
  int? duracaoAcaoHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].duracaoAcaoHoras''',
      ));
  double? picoAcaoHoras(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].picoAcaoHoras''',
      ));
  List? aplicacoesInsulina(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  String? descricaoCompleta(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].descricaoCompleta''',
      ));
}

class CriarAplicacaoInsulinaCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? quantidadeUnidades,
    String? usuarioId = '',
    String? insulinaId = '',
    String? dataHoraAplicacao = '',
    String? descricaoCompleta = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "quantidadeUnidades": ${quantidadeUnidades},
  "usuarioId": "${escapeStringForJson(usuarioId)}",
  "insulinaId": "${escapeStringForJson(insulinaId)}",
  "dataHoraAplicacao": "${escapeStringForJson(dataHoraAplicacao)}",
  "localAplicacao": "${escapeStringForJson(descricaoCompleta)}",
  "ladoAplicacao": "${escapeStringForJson(descricaoCompleta)}",
  "quadranteAplicacao": "${escapeStringForJson(descricaoCompleta)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarAplicacaoInsulina',
      apiUrl: '${baseUrl}/aplicacao-insulina',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? quantidadeUnidades(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.quantidadeUnidades''',
      ));
  String? dataHoraAplicacao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataHoraAplicacao''',
      ));
  String? usuarioId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioId''',
      ));
  String? insulinaId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.insulinaId''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  String? tipoBasalBolus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tipoBasalBolus''',
      ));
  int? duracaoAcaoHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duracaoAcaoHoras''',
      ));
  double? picoAcaoHoras(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.picoAcaoHoras''',
      ));
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CalcularBolusDeCorrecaoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
    String? glicemiaId = 'null',
    int? glicoseAtual = 0,
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "usuarioId": "${escapeStringForJson(usuarioId)}",
  "glicoseAtual": ${glicoseAtual},
  "glicemiaId": "${escapeStringForJson(glicemiaId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'calcularBolusDeCorrecao',
      apiUrl: '${baseUrl}/aplicacao-insulina/calcular-bolus',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? bolusCorrecao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bolusCorrecao''',
      ));
  double? bolus(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.bolusCorrecao.bolus''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bolusCorrecao.message''',
      ));
}

class CriarInsulinaCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? usuarioId = '',
    String? nome = '',
    String? tipoBasalCorrecao = '',
    int? duracaoAcaoHoras,
    double? picoAcaoHoras,
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "tipoBasalCorrecao": "${escapeStringForJson(tipoBasalCorrecao)}",
  "duracaoAcaoHoras": ${duracaoAcaoHoras},
  "picoAcaoHoras": ${picoAcaoHoras},
  "usuarioId": "${escapeStringForJson(usuarioId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarInsulina',
      apiUrl: '${baseUrl}/insulina',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  String? tipoBasalBolus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tipoBasalBolus''',
      ));
  int? duracaoAcaoHoras(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duracaoAcaoHoras''',
      ));
  double? picoAcaoHoras(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.picoAcaoHoras''',
      ));
  String? usuarioId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuarioId''',
      ));
}

class ObterLocaisRodizioDisponiveisCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'obterLocaisRodizioDisponiveis',
      apiUrl: '${baseUrl}/aplicacao-insulina/rodizio/sugestoes',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? local(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].local''',
      ));
  String? lado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].lado''',
      ));
  String? quadrante(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].quadrante''',
      ));
  dynamic sugestoesLocalRodizio(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? descricaoCompleta(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].descricaoCompleta''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End VittaglicoBackendaDevelopment Group Code

class CityApiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'City api',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/json',
      },
      params: {
        'input': "india",
        'cities': "%28cities%29&key=AIzaSyDkGMM5o5dhMfVIdAz-UIC183qNQ4Ezd7Q",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
