// FILE: lib/features/grades/presentation/student/course_grade_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class CourseGradeScreen
    extends StatelessWidget {
  const CourseGradeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'CS 301 Grade',
      description:
          'Current grade: 91.4%',
      icon: Icons.grade_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Homework'),
            trailing: Text('94%'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Exams'),
            trailing: Text('87%'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Projects'),
            trailing: Text('96%'),
          ),
        ),
      ],
    );
  }
}