// FILE: lib/features/housing/presentation/roommate_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class RoommateScreen extends StatelessWidget {
  const RoommateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Roommates',
      description:
          'Manage your roommate group.',
      icon: Icons.people_outline,
    );
  }
}