// FILE: lib/features/degree_progress/domain/degree_requirement.dart

class DegreeRequirement {
  final String name;
  final bool complete;

  const DegreeRequirement({
    required this.name,
    this.complete = false,
  });
}