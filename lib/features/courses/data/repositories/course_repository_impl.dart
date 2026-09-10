// FILE: lib/features/courses/data/repositories/course_repository_impl.dart

import '../../domain/entities/course.dart';
import '../../domain/repositories/course_repository.dart';

class CourseRepositoryImpl
    implements CourseRepository {
  @override
  Future<List<Course>> getCourses() async {
    return const [
      Course(
        id: 'cs301',
        code: 'CS 301',
        title:
            'Algorithms & Data Structures',
        description:
            'Algorithm design and analysis.',
        credits: 3,
      ),
      Course(
        id: 'math221',
        code: 'MATH 221',
        title: 'Linear Algebra',
        description:
            'Vectors and matrices.',
        credits: 3,
      ),
    ];
  }
}