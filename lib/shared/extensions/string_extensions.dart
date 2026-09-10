// FILE: lib/shared/extensions/string_extensions.dart

extension StringExtensions on String {
  String get initials {
    final value = trim();

    return value.isEmpty
        ? '?'
        : value[0].toUpperCase();
  }
}