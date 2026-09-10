// FILE: lib/features/assignments/presentation/educator/educator_assignments_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class EducatorAssignmentsScreen
    extends StatelessWidget {
  const EducatorAssignmentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureScaffold(
      title: 'Assignments',
      description:
          'Create, review and manage coursework.',
      icon: Icons.assignment_outlined,
      children: [
        const Card(
          child: ListTile(
            title: Text('Homework 4'),
            subtitle:
                Text('18 submitted • 6 missing'),
          ),
        ),
        const SizedBox(height: 14),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label:
              const Text('Create Assignment'),
        ),
      ],
    );
  }
}