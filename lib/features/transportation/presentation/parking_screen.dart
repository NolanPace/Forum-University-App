// FILE: lib/features/transportation/presentation/parking_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ParkingScreen extends StatelessWidget {
  const ParkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Parking',
      description:
          'Permits, lots and parking availability.',
      icon: Icons.local_parking,
    );
  }
}