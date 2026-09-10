// FILE: lib/features/advising/presentation/advisees_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class AdviseesScreen
    extends StatelessWidget {
  const AdviseesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Advisees',
      description:
          'Students assigned to your advising roster.',
      icon: Icons.groups_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Alice Johnson'),
            subtitle: Text(
              'Computer Science • 82% complete',
            ),
          ),
        ),
      ],
    );
  }
}