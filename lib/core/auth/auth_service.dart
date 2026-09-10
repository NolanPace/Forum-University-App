// FILE: lib/core/auth/auth_service.dart

import 'auth_session.dart';

class AuthService {
  const AuthService();

  Future<void> signOut() async {
    AuthSession.instance.signOut();
  }
}