// FILE: lib/features/advising/presentation/advisor_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class AdvisorScreen extends StatelessWidget {
  const AdvisorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Your Advisor',
      description:
          'Dr. Jane Smith • Computer Science',
      icon: Icons.person_outline,
    );
  }
}