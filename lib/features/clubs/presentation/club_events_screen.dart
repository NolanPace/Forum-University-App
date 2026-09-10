// FILE: lib/features/clubs/presentation/club_events_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ClubEventsScreen
    extends StatelessWidget {
  const ClubEventsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Club Events',
      description:
          'Upcoming organization events.',
      icon: Icons.event_outlined,
    );
  }
}