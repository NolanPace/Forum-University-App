// FILE: lib/features/courses/data/models/course_section_model.dart

import '../../domain/entities/course_section.dart';

class CourseSectionModel
    extends CourseSection {
  const CourseSectionModel({
    required super.id,
    required super.courseId,
    required super.section,
    required super.instructor,
    required super.schedule,
    required super.room,
    required super.capacity,
    required super.enrolled,
  });
}