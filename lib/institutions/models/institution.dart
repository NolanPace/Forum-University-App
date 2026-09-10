// FILE: lib/institutions/models/institution.dart

class Institution {
  final String id;
  final String name;
  final String shortName;
  final String location;

  const Institution({
    required this.id,
    required this.name,
    required this.shortName,
    required this.location,
  });
}