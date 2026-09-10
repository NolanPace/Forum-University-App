// FILE: lib/core/auth/token_manager.dart

class TokenManager {
  String? _token;

  String? get token => _token;

  void setToken(String token) {
    _token = token;
  }

  void clear() {
    _token = null;
  }
}