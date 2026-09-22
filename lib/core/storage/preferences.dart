// FILE: lib/core/storage/preferences.dart
// Lightweight persistent storage wrapper for non-sensitive Forum data.

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

  static final Preferences instance = Preferences._();

  Future<SharedPreferences> get _preferences async {
    return SharedPreferences.getInstance();
  }

  Future<String?> getString(String key) async {
    final SharedPreferences prefs = await _preferences;
    return prefs.getString(key);
  }

  Future<void> setString(
    String key,
    String value,
  ) async {
    final SharedPreferences prefs = await _preferences;
    await prefs.setString(key, value);
  }

  Future<bool?> getBool(String key) async {
    final SharedPreferences prefs = await _preferences;
    return prefs.getBool(key);
  }

  Future<void> setBool(
    String key,
    bool value,
  ) async {
    final SharedPreferences prefs = await _preferences;
    await prefs.setBool(key, value);
  }

  Future<int?> getInt(String key) async {
    final SharedPreferences prefs = await _preferences;
    return prefs.getInt(key);
  }

  Future<void> setInt(
    String key,
    int value,
  ) async {
    final SharedPreferences prefs = await _preferences;
    await prefs.setInt(key, value);
  }

  Future<void> remove(String key) async {
    final SharedPreferences prefs = await _preferences;
    await prefs.remove(key);
  }
}