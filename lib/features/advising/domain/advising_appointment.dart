// FILE: lib/features/advising/domain/advising_appointment.dart

class AdvisingAppointment {
  final String id;
  final String studentName;
  final DateTime startsAt;

  const AdvisingAppointment({
    required this.id,
    required this.studentName,
    required this.startsAt,
  });
}