// FILE: lib/features/courses/data/models/course_model.dart

import '../../domain/entities/course.dart';

class CourseModel extends Course {
  const CourseModel({
    required super.id,
    required super.code,
    required super.title,
    required super.description,
    required super.credits,
  });
}