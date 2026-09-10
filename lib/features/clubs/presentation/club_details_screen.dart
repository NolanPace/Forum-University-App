// FILE: lib/features/clubs/presentation/club_details_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ClubDetailsScreen
    extends StatelessWidget {
  const ClubDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureScaffold(
      title: 'Robotics Club',
      description: '312 members',
      icon: Icons.groups_outlined,
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text('Join Club'),
        ),
      ],
    );
  }
}