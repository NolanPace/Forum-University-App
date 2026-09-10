// FILE: lib/core/errors/app_exception.dart

class AppException implements Exception {
  final String message;

  const AppException(this.message);
}