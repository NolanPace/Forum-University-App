// FILE: lib/core/storage/account_storage.dart
// Persists Forum account state on the local device.

import 'dart:convert';

import '../../identity/models/app_user.dart';
import '../../institutions/models/institution.dart';
import 'preferences.dart';

class AccountStorage {
  AccountStorage._();

  static final AccountStorage instance = AccountStorage._();

  final Preferences _preferences = Preferences.instance;

  static const String _userKey = 'forum.account.user';
  static const String _institutionsKey = 'forum.account.institutions';
  static const String _activeInstitutionKey =
      'forum.account.activeInstitutionId';
  static const String _signedInKey = 'forum.account.signedIn';
  static const String _navigationIndexKey =
      'forum.session.navigationIndex';

  // User
  Future<void> saveUser(AppUser user) async {
    final String encoded = jsonEncode(
      user.toJson(),
    );

    await _preferences.setString(
      _userKey,
      encoded,
    );
  }

  Future<AppUser?> loadUser() async {
    final String? encoded = await _preferences.getString(
      _userKey,
    );

    if (encoded == null || encoded.isEmpty) {
      return null;
    }

    try {
      final dynamic decoded = jsonDecode(encoded);

      if (decoded is! Map) {
        return null;
      }

      return AppUser.fromJson(
        Map<String, dynamic>.from(decoded),
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> removeUser() async {
    await _preferences.remove(
      _userKey,
    );
  }

  // Institutions
  Future<void> saveInstitutions(
    List<Institution> institutions,
  ) async {
    final List<Map<String, dynamic>> data = institutions
        .map(
          (Institution institution) => institution.toJson(),
        )
        .toList();

    await _preferences.setString(
      _institutionsKey,
      jsonEncode(data),
    );
  }

  Future<List<Institution>> loadInstitutions() async {
    final String? encoded = await _preferences.getString(
      _institutionsKey,
    );

    if (encoded == null || encoded.isEmpty) {
      return <Institution>[];
    }

    try {
      final dynamic decoded = jsonDecode(encoded);

      if (decoded is! List) {
        return <Institution>[];
      }

      return decoded
          .whereType<Map>()
          .map(
            (Map<dynamic, dynamic> item) {
              return Institution.fromJson(
                Map<String, dynamic>.from(item),
              );
            },
          )
          .toList();
    } catch (_) {
      return <Institution>[];
    }
  }

  // Active institution
  Future<void> saveActiveInstitutionId(
    String? institutionId,
  ) async {
    if (institutionId == null || institutionId.isEmpty) {
      await _preferences.remove(
        _activeInstitutionKey,
      );

      return;
    }

    await _preferences.setString(
      _activeInstitutionKey,
      institutionId,
    );
  }

  Future<String?> loadActiveInstitutionId() async {
    return _preferences.getString(
      _activeInstitutionKey,
    );
  }

  // Authentication state
  Future<void> saveSignedIn(
    bool signedIn,
  ) async {
    await _preferences.setBool(
      _signedInKey,
      signedIn,
    );
  }

  Future<bool> loadSignedIn() async {
    return await _preferences.getBool(
          _signedInKey,
        ) ??
        false;
  }

  // Navigation
  Future<void> saveNavigationIndex(
    int index,
  ) async {
    await _preferences.setInt(
      _navigationIndexKey,
      index,
    );
  }

  Future<int> loadNavigationIndex() async {
    return await _preferences.getInt(
          _navigationIndexKey,
        ) ??
        0;
  }

  // Delete local account
  Future<void> clearAccountData() async {
    await _preferences.remove(_userKey);
    await _preferences.remove(_institutionsKey);
    await _preferences.remove(_activeInstitutionKey);
    await _preferences.remove(_signedInKey);
    await _preferences.remove(_navigationIndexKey);
  }
}