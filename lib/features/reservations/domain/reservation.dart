// FILE: lib/features/reservations/domain/reservation.dart

class Reservation {
  final String id;
  final String resourceName;
  final DateTime start;
  final DateTime end;

  const Reservation({
    required this.id,
    required this.resourceName,
    required this.start,
    required this.end,
  });
}