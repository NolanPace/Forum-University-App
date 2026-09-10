// FILE: lib/features/housing/presentation/room_selection_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class RoomSelectionScreen
    extends StatelessWidget {
  const RoomSelectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Room Selection',
      description:
          'Browse available residential rooms.',
      icon: Icons.bed_outlined,
    );
  }
}