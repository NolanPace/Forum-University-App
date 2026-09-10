// FILE: lib/features/registration/presentation/holds_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class HoldsScreen extends StatelessWidget {
  const HoldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Registration Holds',
      description:
          'View restrictions affecting registration.',
      icon: Icons.block,
      children: [
        Card(
          child: ListTile(
            leading:
                Icon(Icons.check_circle),
            title: Text(
              'No active holds',
            ),
          ),
        ),
      ],
    );
  }
}