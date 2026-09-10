// FILE: lib/core/utils/validators.dart

class Validators {
  static bool email(String value) {
    return value.contains('@') &&
        value.contains('.');
  }

  static bool required(String value) {
    return value.trim().isNotEmpty;
  }
}