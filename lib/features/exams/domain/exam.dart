// FILE: lib/features/exams/domain/exam.dart

class Exam {
  final String id;
  final String courseCode;
  final DateTime startsAt;
  final String location;

  const Exam({
    required this.id,
    required this.courseCode,
    required this.startsAt,
    required this.location,
  });
}