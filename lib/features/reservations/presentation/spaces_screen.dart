// FILE: lib/features/reservations/presentation/spaces_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class SpacesScreen extends StatelessWidget {
  const SpacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Study Spaces',
      description:
          'Find and reserve campus spaces.',
      icon: Icons.meeting_room_outlined,
      children: [
        Card(
          child: ListTile(
            title:
                Text('Library Room 204'),
            subtitle:
                Text('Available now • 6 seats'),
            trailing: Text('Reserve'),
          ),
        ),
        Card(
          child: ListTile(
            title:
                Text('Science Center 110'),
            subtitle: Text(
              'Available 4:00–6:00 PM',
            ),
            trailing: Text('Reserve'),
          ),
        ),
      ],
    );
  }
}