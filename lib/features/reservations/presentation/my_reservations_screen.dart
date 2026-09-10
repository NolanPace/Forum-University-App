// FILE: lib/features/reservations/presentation/my_reservations_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class MyReservationsScreen
    extends StatelessWidget {
  const MyReservationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'My Reservations',
      description:
          'Your upcoming campus bookings.',
      icon: Icons.event_available_outlined,
    );
  }
}