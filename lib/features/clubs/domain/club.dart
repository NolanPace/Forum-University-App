// FILE: lib/features/clubs/domain/club.dart

class Club {
  final String id;
  final String name;
  final int members;

  const Club({
    required this.id,
    required this.name,
    this.members = 0,
  });
}