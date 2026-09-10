// FILE: lib/features/degree_progress/presentation/degree_progress_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class DegreeProgressScreen
    extends StatelessWidget {
  const DegreeProgressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Degree Progress',
      description:
          'B.S. Computer Science • 107 / 132 credits',
      icon: Icons.school_outlined,
      children: [
        LinearProgressIndicator(
          value: .81,
          minHeight: 10,
        ),
        SizedBox(height: 18),
        Card(
          child: ListTile(
            title: Text('University Core'),
            trailing: Text('92%'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Major'),
            trailing: Text('80%'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Minor'),
            trailing: Text('67%'),
          ),
        ),
      ],
    );
  }
}