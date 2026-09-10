// FILE: lib/shared/models/person.dart

class Person {
  final String id;
  final String name;
  final String? email;

  const Person({
    required this.id,
    required this.name,
    this.email,
  });
}