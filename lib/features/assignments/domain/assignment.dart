// FILE: lib/features/assignments/domain/assignment.dart

class Assignment {
  final String id;
  final String courseCode;
  final String title;
  final DateTime dueAt;
  final double points;

  const Assignment({
    required this.id,
    required this.courseCode,
    required this.title,
    required this.dueAt,
    required this.points,
  });
}