// FILE: lib/features/grades/presentation/student/grades_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Grades',
      description:
          'Fall 2026 academic results.',
      icon: Icons.grade_outlined,
      children: [
        Card(
          child: ListTile(
            title:
                Text('CS 301 • Algorithms'),
            subtitle: Text('91.4%'),
            trailing: Text('A-'),
          ),
        ),
        SizedBox(height: 10),
        Card(
          child: ListTile(
            title:
                Text('MATH 221 • Linear Algebra'),
            subtitle: Text('94.2%'),
            trailing: Text('A'),
          ),
        ),
        SizedBox(height: 18),
        Card(
          child: ListTile(
            title:
                Text('Cumulative GPA'),
            trailing: Text('3.62'),
          ),
        ),
      ],
    );
  }
}