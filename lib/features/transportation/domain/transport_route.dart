// FILE: lib/features/transportation/domain/transport_route.dart

class TransportRoute {
  final String id;
  final String name;
  final String nextArrival;

  const TransportRoute({
    required this.id,
    required this.name,
    this.nextArrival = '3 min',
  });
}