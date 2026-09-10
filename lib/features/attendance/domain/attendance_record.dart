// FILE: lib/features/attendance/domain/attendance_record.dart

class AttendanceRecord {
  final String studentId;
  final DateTime date;
  final bool present;

  const AttendanceRecord({
    required this.studentId,
    required this.date,
    this.present = true,
  });
}