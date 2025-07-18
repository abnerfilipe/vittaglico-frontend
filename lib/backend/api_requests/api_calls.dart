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
  static SubstituirCall substituirCall = SubstituirCall();
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

class SubstituirCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'substituir',
      apiUrl: '${baseUrl}/substituir',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
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
  dynamic dataDeNascimento(dynamic response) => getJsonField(
        response,
        r'''$.dataDeNascimento''',
      );
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
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "telefone": "${escapeStringForJson(telefone)}",
  "dataDeNascimento": "${escapeStringForJson(dataDeNascimento)}"
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
}

class AtualizarUsuarioTelefoneDataDeNascimentoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? telefone = '',
    String? dataDeNascimento = '',
  }) async {
    final baseUrl = VittaglicoBackendaDevelopmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "telefone": "${escapeStringForJson(telefone)}",
  "dataDeNascimento": "${escapeStringForJson(dataDeNascimento)}"
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
