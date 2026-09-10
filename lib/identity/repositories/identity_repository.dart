// FILE: lib/identity/repositories/identity_repository.dart

abstract class IdentityRepository {
  Future<dynamic> currentUser();
}