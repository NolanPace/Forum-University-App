// FILE: lib/features/exams/presentation/exams_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ExamsScreen extends StatelessWidget {
  const ExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Exams',
      description:
          'Upcoming exams and registrations.',
      icon: Icons.assignment_turned_in_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('CS 301 Midterm'),
            subtitle: Text(
              'Sep 16 • 10:00 AM • Bannow 254',
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('ECON 211 Exam 1'),
            subtitle: Text(
              'Sep 22 • 1:00 PM • Dolan 105',
            ),
          ),
        ),
      ],
    );
  }
}