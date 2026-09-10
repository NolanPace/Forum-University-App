// FILE: lib/features/transportation/presentation/shuttle_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ShuttleScreen extends StatelessWidget {
  const ShuttleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Shuttle',
      description:
          'Vehicle status and arrival time.',
      icon: Icons.directions_bus,
    );
  }
}