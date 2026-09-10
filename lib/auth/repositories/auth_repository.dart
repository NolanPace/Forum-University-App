// FILE: lib/auth/repositories/auth_repository.dart

abstract class AuthRepository {
  Future<void> signOut();
}