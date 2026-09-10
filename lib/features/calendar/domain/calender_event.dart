// FILE: lib/features/calendar/domain/calendar_event.dart

class CalendarEvent {
  final String id;
  final String title;
  final DateTime start;
  final String category;

  const CalendarEvent({
    required this.id,
    required this.title,
    required this.start,
    this.category = 'university',
  });
}