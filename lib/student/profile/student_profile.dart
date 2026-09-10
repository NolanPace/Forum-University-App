// FILE: lib/student/profile/student_profile.dart

class StudentProfile {
  final String studentId;
  final String program;
  final String major;
  final String? minor;
  final String academicLevel;
  final String expectedGraduation;

  const StudentProfile({
    required this.studentId,
    required this.program,
    required this.major,
    this.minor,
    required this.academicLevel,
    required this.expectedGraduation,
  });
}