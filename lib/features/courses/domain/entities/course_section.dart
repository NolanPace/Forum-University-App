// FILE: lib/features/courses/domain/entities/course_section.dart

class CourseSection {
  final String id;
  final String courseId;
  final String section;
  final String instructor;
  final String schedule;
  final String room;
  final int capacity;
  final int enrolled;

  const CourseSection({
    required this.id,
    required this.courseId,
    required this.section,
    required this.instructor,
    required this.schedule,
    required this.room,
    required this.capacity,
    required this.enrolled,
  });

  int get seatsAvailable =>
      capacity - enrolled;
}