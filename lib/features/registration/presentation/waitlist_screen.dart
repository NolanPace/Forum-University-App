// FILE: lib/features/registration/presentation/waitlist_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class WaitlistScreen extends StatelessWidget {
  const WaitlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Waitlists',
      description:
          'Track your active course waitlists.',
      icon: Icons.hourglass_bottom,
      children: [
        Card(
          child: ListTile(
            title: Text('CS 351-01'),
            subtitle:
                Text('Position 3'),
          ),
        ),
      ],
    );
  }
}