// FILE: lib/features/courses/domain/repositories/course_repository.dart

import '../entities/course.dart';

abstract class CourseRepository {
  Future<List<Course>> getCourses();
}