// FILE: lib/features/grades/presentation/educator/gradebook_screen.dart

import 'package:flutter/material.dart';
import '../../../../shared/widgets/empty_state.dart';

class GradebookScreen
    extends StatelessWidget {
  const GradebookScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Gradebook',
      description: 'CS 301',
      icon: Icons.fact_check_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Alice Johnson'),
            subtitle:
                Text('HW4 94 • Midterm 91'),
            trailing: Text('A-'),
          ),
        ),
        SizedBox(height: 10),
        Card(
          child: ListTile(
            title: Text('Marcus Lee'),
            subtitle:
                Text('HW4 88 • Midterm 85'),
            trailing: Text('B+'),
          ),
        ),
      ],
    );
  }
}