// FILE: lib/features/assignments/presentation/student/student_assignments_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class StudentAssignmentsScreen
    extends StatelessWidget {
  const StudentAssignmentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Assignments',
      description:
          'Your upcoming coursework and submissions.',
      icon: Icons.assignment_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Homework 4'),
            subtitle:
                Text('CS 301 • Due Sep 14'),
            trailing:
                Text('Not submitted'),
          ),
        ),
        SizedBox(height: 10),
        Card(
          child: ListTile(
            title: Text('Lab 3'),
            subtitle:
                Text('EE 240 • Due Sep 16'),
            trailing: Text('Submitted'),
          ),
        ),
      ],
    );
  }
}