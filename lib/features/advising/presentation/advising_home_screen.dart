// FILE: lib/features/advising/presentation/advising_home_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class AdvisingHomeScreen
    extends StatelessWidget {
  const AdvisingHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Advising',
      description:
          'Academic advising and appointments.',
      icon: Icons.school_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Your Advisor'),
            subtitle: Text(
              'Dr. Jane Smith • Dolan 310',
            ),
          ),
        ),
      ],
    );
  }
}