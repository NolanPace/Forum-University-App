// FILE: lib/features/reservations/presentation/space_details_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class SpaceDetailsScreen
    extends StatelessWidget {
  const SpaceDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Library Room 204',
      description:
          'Capacity 6 • Whiteboard • Display',
      icon: Icons.meeting_room_outlined,
    );
  }
}