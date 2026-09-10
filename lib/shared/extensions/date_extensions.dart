// FILE: lib/shared/extensions/date_extensions.dart

extension DateExtensions on DateTime {
  String get shortDate =>
      '$month/$day/$year';
}