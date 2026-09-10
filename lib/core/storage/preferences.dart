// FILE: lib/core/storage/preferences.dart

class Preferences {
  final Map<String, Object?> _values = {};

  Object? operator [](String key) {
    return _values[key];
  }

  void set(
    String key,
    Object? value,
  ) {
    _values[key] = value;
  }
}