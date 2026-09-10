// FILE: lib/features/office_hours/domain/office_hour.dart

class OfficeHour {
  final String weekday;
  final String timeRange;

  const OfficeHour({
    required this.weekday,
    required this.timeRange,
  });
}