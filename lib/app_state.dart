import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_usuario')) {
        try {
          final serializedData = prefs.getString('ff_usuario') ?? '{}';
          _usuario =
              UsuarioStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_token')) {
        try {
          final serializedData = prefs.getString('ff_token') ?? '{}';
          _token = AuthStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _signIschecked = false;
  bool get signIschecked => _signIschecked;
  set signIschecked(bool value) {
    _signIschecked = value;
  }

  UsuarioStruct _usuario = UsuarioStruct();
  UsuarioStruct get usuario => _usuario;
  set usuario(UsuarioStruct value) {
    _usuario = value;
    prefs.setString('ff_usuario', value.serialize());
  }

  void updateUsuarioStruct(Function(UsuarioStruct) updateFn) {
    updateFn(_usuario);
    prefs.setString('ff_usuario', _usuario.serialize());
  }

  AuthStruct _token = AuthStruct();
  AuthStruct get token => _token;
  set token(AuthStruct value) {
    _token = value;
    prefs.setString('ff_token', value.serialize());
  }

  void updateTokenStruct(Function(AuthStruct) updateFn) {
    updateFn(_token);
    prefs.setString('ff_token', _token.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
