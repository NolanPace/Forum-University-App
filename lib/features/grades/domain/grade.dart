// FILE: lib/features/grades/domain/grade.dart

class Grade {
  final String courseCode;
  final double percentage;
  final String letter;

  const Grade({
    required this.courseCode,
    required this.percentage,
    required this.letter,
  });
}