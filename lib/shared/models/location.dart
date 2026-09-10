// FILE: lib/shared/models/location.dart

class CampusLocation {
  final String name;
  final String? building;
  final String? room;

  const CampusLocation({
    required this.name,
    this.building,
    this.room,
  });
}