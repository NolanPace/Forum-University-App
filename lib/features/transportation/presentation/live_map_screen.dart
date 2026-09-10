// FILE: lib/features/transportation/presentation/live_map_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class LiveMapScreen extends StatelessWidget {
  const LiveMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Live Shuttle Map',
      description:
          'Live vehicle positions will display here.',
      icon: Icons.map_outlined,
    );
  }
}