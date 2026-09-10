// FILE: lib/features/degree_progress/presentation/requirement_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class RequirementScreen
    extends StatelessWidget {
  const RequirementScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Requirements',
      description:
          'Computer Science major requirements.',
      icon: Icons.checklist,
      children: [
        Card(
          child: ListTile(
            leading:
                Icon(Icons.check_circle),
            title: Text('CS 101'),
          ),
        ),
        Card(
          child: ListTile(
            leading:
                Icon(Icons.check_circle),
            title: Text('CS 201'),
          ),
        ),
        Card(
          child: ListTile(
            leading:
                Icon(Icons.timelapse),
            title: Text('CS 301'),
            subtitle:
                Text('In progress'),
          ),
        ),
      ],
    );
  }
}