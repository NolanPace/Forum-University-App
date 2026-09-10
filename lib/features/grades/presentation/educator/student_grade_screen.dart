// FILE: lib/features/grades/presentation/educator/student_grade_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class StudentGradeScreen
    extends StatelessWidget {
  const StudentGradeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Alice Johnson',
      description:
          'Student academic performance',
      icon: Icons.person_outline,
      children: [
        Card(
          child: ListTile(
            title: Text('Current Grade'),
            trailing: Text('91.7%'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Attendance'),
            trailing: Text('14 / 15'),
          ),
        ),
      ],
    );
  }
}