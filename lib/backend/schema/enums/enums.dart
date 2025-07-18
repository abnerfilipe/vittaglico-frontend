import 'package:collection/collection.dart';

enum Periodo {
  JEJUM,
  ANTES_CAFE_DA_MANHA,
  DEPOIS_CAFE_DA_MANHA,
  ANTES_ALMOCO,
  DEPOIS_ALMOCO,
  ANTES_JANTAR,
  DEPOIS_JANTAR,
  ANTES_DORMIR,
  MADRUGADA,
  EXTRA,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Periodo):
      return Periodo.values.deserialize(value) as T?;
    default:
      return null;
  }
}
