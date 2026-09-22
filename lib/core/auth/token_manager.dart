// FILE: lib/core/auth/token_manager.dart
// Securely stores Forum and institution authentication tokens.

import '../storage/secure_storage.dart';

class TokenManager {
  TokenManager._();

  static final TokenManager instance = TokenManager._();

  final SecureStorage _storage = SecureStorage.instance;

  static const String _accessTokenKey = 'forum.auth.accessToken';
  static const String _refreshTokenKey = 'forum.auth.refreshToken';

  // Global Forum tokens
  Future<void> saveAccessToken(
    String token,
  ) async {
    await _storage.write(
      key: _accessTokenKey,
      value: token,
    );
  }

  Future<String?> getAccessToken() async {
    return _storage.read(
      _accessTokenKey,
    );
  }

  Future<void> saveRefreshToken(
    String token,
  ) async {
    await _storage.write(
      key: _refreshTokenKey,
      value: token,
    );
  }

  Future<String?> getRefreshToken() async {
    return _storage.read(
      _refreshTokenKey,
    );
  }

  // Institution tokens
  String _institutionAccessTokenKey(
    String institutionId,
  ) {
    return 'forum.institution.$institutionId.accessToken';
  }

  String _institutionRefreshTokenKey(
    String institutionId,
  ) {
    return 'forum.institution.$institutionId.refreshToken';
  }

  Future<void> saveInstitutionAccessToken({
    required String institutionId,
    required String token,
  }) async {
    await _storage.write(
      key: _institutionAccessTokenKey(institutionId),
      value: token,
    );
  }

  Future<String?> getInstitutionAccessToken(
    String institutionId,
  ) async {
    return _storage.read(
      _institutionAccessTokenKey(institutionId),
    );
  }

  Future<void> saveInstitutionRefreshToken({
    required String institutionId,
    required String token,
  }) async {
    await _storage.write(
      key: _institutionRefreshTokenKey(institutionId),
      value: token,
    );
  }

  Future<String?> getInstitutionRefreshToken(
    String institutionId,
  ) async {
    return _storage.read(
      _institutionRefreshTokenKey(institutionId),
    );
  }

  Future<void> clearInstitutionTokens(
    String institutionId,
  ) async {
    await _storage.delete(
      _institutionAccessTokenKey(institutionId),
    );

    await _storage.delete(
      _institutionRefreshTokenKey(institutionId),
    );
  }

  // Session cleanup
  Future<void> clearGlobalTokens() async {
    await _storage.delete(
      _accessTokenKey,
    );

    await _storage.delete(
      _refreshTokenKey,
    );
  }

  Future<void> clearEverything() async {
    await _storage.deleteAll();
  }
}