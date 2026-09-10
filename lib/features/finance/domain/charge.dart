// FILE: lib/features/finance/domain/charge.dart

class Charge {
  final String id;
  final String description;
  final double amount;

  const Charge({
    required this.id,
    required this.description,
    required this.amount,
  });
}