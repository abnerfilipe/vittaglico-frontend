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
    _safeInit(() {
      _Insulinas = prefs
              .getStringList('ff_Insulinas')
              ?.map((x) {
                try {
                  return InsulinaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Insulinas;
    });
    _safeInit(() {
      _AplicacaoInsulinas = prefs
              .getStringList('ff_AplicacaoInsulinas')
              ?.map((x) {
                try {
                  return AplicacaoInsulinaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AplicacaoInsulinas;
    });
    _safeInit(() {
      _Glicemia = prefs
              .getStringList('ff_Glicemia')
              ?.map((x) {
                try {
                  return GlicemiaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Glicemia;
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

  List<InsulinaStruct> _Insulinas = [];
  List<InsulinaStruct> get Insulinas => _Insulinas;
  set Insulinas(List<InsulinaStruct> value) {
    _Insulinas = value;
    prefs.setStringList(
        'ff_Insulinas', value.map((x) => x.serialize()).toList());
  }

  void addToInsulinas(InsulinaStruct value) {
    Insulinas.add(value);
    prefs.setStringList(
        'ff_Insulinas', _Insulinas.map((x) => x.serialize()).toList());
  }

  void removeFromInsulinas(InsulinaStruct value) {
    Insulinas.remove(value);
    prefs.setStringList(
        'ff_Insulinas', _Insulinas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInsulinas(int index) {
    Insulinas.removeAt(index);
    prefs.setStringList(
        'ff_Insulinas', _Insulinas.map((x) => x.serialize()).toList());
  }

  void updateInsulinasAtIndex(
    int index,
    InsulinaStruct Function(InsulinaStruct) updateFn,
  ) {
    Insulinas[index] = updateFn(_Insulinas[index]);
    prefs.setStringList(
        'ff_Insulinas', _Insulinas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInsulinas(int index, InsulinaStruct value) {
    Insulinas.insert(index, value);
    prefs.setStringList(
        'ff_Insulinas', _Insulinas.map((x) => x.serialize()).toList());
  }

  List<AplicacaoInsulinaStruct> _AplicacaoInsulinas = [];
  List<AplicacaoInsulinaStruct> get AplicacaoInsulinas => _AplicacaoInsulinas;
  set AplicacaoInsulinas(List<AplicacaoInsulinaStruct> value) {
    _AplicacaoInsulinas = value;
    prefs.setStringList(
        'ff_AplicacaoInsulinas', value.map((x) => x.serialize()).toList());
  }

  void addToAplicacaoInsulinas(AplicacaoInsulinaStruct value) {
    AplicacaoInsulinas.add(value);
    prefs.setStringList('ff_AplicacaoInsulinas',
        _AplicacaoInsulinas.map((x) => x.serialize()).toList());
  }

  void removeFromAplicacaoInsulinas(AplicacaoInsulinaStruct value) {
    AplicacaoInsulinas.remove(value);
    prefs.setStringList('ff_AplicacaoInsulinas',
        _AplicacaoInsulinas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAplicacaoInsulinas(int index) {
    AplicacaoInsulinas.removeAt(index);
    prefs.setStringList('ff_AplicacaoInsulinas',
        _AplicacaoInsulinas.map((x) => x.serialize()).toList());
  }

  void updateAplicacaoInsulinasAtIndex(
    int index,
    AplicacaoInsulinaStruct Function(AplicacaoInsulinaStruct) updateFn,
  ) {
    AplicacaoInsulinas[index] = updateFn(_AplicacaoInsulinas[index]);
    prefs.setStringList('ff_AplicacaoInsulinas',
        _AplicacaoInsulinas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAplicacaoInsulinas(
      int index, AplicacaoInsulinaStruct value) {
    AplicacaoInsulinas.insert(index, value);
    prefs.setStringList('ff_AplicacaoInsulinas',
        _AplicacaoInsulinas.map((x) => x.serialize()).toList());
  }

  List<GlicemiaStruct> _Glicemia = [];
  List<GlicemiaStruct> get Glicemia => _Glicemia;
  set Glicemia(List<GlicemiaStruct> value) {
    _Glicemia = value;
    prefs.setStringList(
        'ff_Glicemia', value.map((x) => x.serialize()).toList());
  }

  void addToGlicemia(GlicemiaStruct value) {
    Glicemia.add(value);
    prefs.setStringList(
        'ff_Glicemia', _Glicemia.map((x) => x.serialize()).toList());
  }

  void removeFromGlicemia(GlicemiaStruct value) {
    Glicemia.remove(value);
    prefs.setStringList(
        'ff_Glicemia', _Glicemia.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGlicemia(int index) {
    Glicemia.removeAt(index);
    prefs.setStringList(
        'ff_Glicemia', _Glicemia.map((x) => x.serialize()).toList());
  }

  void updateGlicemiaAtIndex(
    int index,
    GlicemiaStruct Function(GlicemiaStruct) updateFn,
  ) {
    Glicemia[index] = updateFn(_Glicemia[index]);
    prefs.setStringList(
        'ff_Glicemia', _Glicemia.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInGlicemia(int index, GlicemiaStruct value) {
    Glicemia.insert(index, value);
    prefs.setStringList(
        'ff_Glicemia', _Glicemia.map((x) => x.serialize()).toList());
  }

  List<SugestaoLocalRodizioStruct> _SugestaoLocalRodizio = [];
  List<SugestaoLocalRodizioStruct> get SugestaoLocalRodizio =>
      _SugestaoLocalRodizio;
  set SugestaoLocalRodizio(List<SugestaoLocalRodizioStruct> value) {
    _SugestaoLocalRodizio = value;
  }

  void addToSugestaoLocalRodizio(SugestaoLocalRodizioStruct value) {
    SugestaoLocalRodizio.add(value);
  }

  void removeFromSugestaoLocalRodizio(SugestaoLocalRodizioStruct value) {
    SugestaoLocalRodizio.remove(value);
  }

  void removeAtIndexFromSugestaoLocalRodizio(int index) {
    SugestaoLocalRodizio.removeAt(index);
  }

  void updateSugestaoLocalRodizioAtIndex(
    int index,
    SugestaoLocalRodizioStruct Function(SugestaoLocalRodizioStruct) updateFn,
  ) {
    SugestaoLocalRodizio[index] = updateFn(_SugestaoLocalRodizio[index]);
  }

  void insertAtIndexInSugestaoLocalRodizio(
      int index, SugestaoLocalRodizioStruct value) {
    SugestaoLocalRodizio.insert(index, value);
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
