// FILE: lib/features/courses/domain/entities/course.dart

class Course {
  final String id;
  final String code;
  final String title;
  final String description;
  final int credits;

  const Course({
    required this.id,
    required this.code,
    required this.title,
    required this.description,
    required this.credits,
  });
}