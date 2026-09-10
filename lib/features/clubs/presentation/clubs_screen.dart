// FILE: lib/features/clubs/presentation/clubs_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Clubs & Societies',
      description:
          'Discover campus organizations.',
      icon: Icons.groups_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Robotics Club'),
            subtitle: Text(
              '312 members • Engineering',
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Computer Science Society',
            ),
            subtitle: Text(
              '184 members • Academic',
            ),
          ),
        ),
      ],
    );
  }
}