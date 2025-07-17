// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthStruct extends BaseStruct {
  AuthStruct({
    String? token,
    bool? isRevoked,
    DateTime? expiresAtDate,
    String? usuarioId,
    DateTime? createdAt,
    String? accessToken,
    bool? valid,
  })  : _token = token,
        _isRevoked = isRevoked,
        _expiresAtDate = expiresAtDate,
        _usuarioId = usuarioId,
        _createdAt = createdAt,
        _accessToken = accessToken,
        _valid = valid;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "isRevoked" field.
  bool? _isRevoked;
  bool get isRevoked => _isRevoked ?? false;
  set isRevoked(bool? val) => _isRevoked = val;

  bool hasIsRevoked() => _isRevoked != null;

  // "expiresAtDate" field.
  DateTime? _expiresAtDate;
  DateTime? get expiresAtDate => _expiresAtDate;
  set expiresAtDate(DateTime? val) => _expiresAtDate = val;

  bool hasExpiresAtDate() => _expiresAtDate != null;

  // "usuarioId" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  set usuarioId(String? val) => _usuarioId = val;

  bool hasUsuarioId() => _usuarioId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "valid" field.
  bool? _valid;
  bool get valid => _valid ?? false;
  set valid(bool? val) => _valid = val;

  bool hasValid() => _valid != null;

  static AuthStruct fromMap(Map<String, dynamic> data) => AuthStruct(
        token: data['token'] as String?,
        isRevoked: data['isRevoked'] as bool?,
        expiresAtDate: data['expiresAtDate'] as DateTime?,
        usuarioId: data['usuarioId'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        accessToken: data['accessToken'] as String?,
        valid: data['valid'] as bool?,
      );

  static AuthStruct? maybeFromMap(dynamic data) =>
      data is Map ? AuthStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'isRevoked': _isRevoked,
        'expiresAtDate': _expiresAtDate,
        'usuarioId': _usuarioId,
        'createdAt': _createdAt,
        'accessToken': _accessToken,
        'valid': _valid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'isRevoked': serializeParam(
          _isRevoked,
          ParamType.bool,
        ),
        'expiresAtDate': serializeParam(
          _expiresAtDate,
          ParamType.DateTime,
        ),
        'usuarioId': serializeParam(
          _usuarioId,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'valid': serializeParam(
          _valid,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AuthStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        isRevoked: deserializeParam(
          data['isRevoked'],
          ParamType.bool,
          false,
        ),
        expiresAtDate: deserializeParam(
          data['expiresAtDate'],
          ParamType.DateTime,
          false,
        ),
        usuarioId: deserializeParam(
          data['usuarioId'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        valid: deserializeParam(
          data['valid'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AuthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthStruct &&
        token == other.token &&
        isRevoked == other.isRevoked &&
        expiresAtDate == other.expiresAtDate &&
        usuarioId == other.usuarioId &&
        createdAt == other.createdAt &&
        accessToken == other.accessToken &&
        valid == other.valid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        token,
        isRevoked,
        expiresAtDate,
        usuarioId,
        createdAt,
        accessToken,
        valid
      ]);
}

AuthStruct createAuthStruct({
  String? token,
  bool? isRevoked,
  DateTime? expiresAtDate,
  String? usuarioId,
  DateTime? createdAt,
  String? accessToken,
  bool? valid,
}) =>
    AuthStruct(
      token: token,
      isRevoked: isRevoked,
      expiresAtDate: expiresAtDate,
      usuarioId: usuarioId,
      createdAt: createdAt,
      accessToken: accessToken,
      valid: valid,
    );
