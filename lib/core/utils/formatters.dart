// FILE: lib/core/utils/formatters.dart

class Formatters {
  static String money(num value) {
    return '\$${value.toStringAsFixed(2)}';
  }
}