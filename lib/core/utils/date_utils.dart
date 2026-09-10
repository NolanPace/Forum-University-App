// FILE: lib/core/utils/date_utils.dart

class PorticoDateUtils {
  static String friendly(
    DateTime date,
  ) {
    return '${date.month}/${date.day}/${date.year}';
  }
}