// FILE: lib/features/submissions/domain/submission.dart

class Submission {
  final String id;
  final String assignmentId;
  final String studentId;
  final String status;

  const Submission({
    required this.id,
    required this.assignmentId,
    required this.studentId,
    this.status = 'submitted',
  });
}