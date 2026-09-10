// FILE: lib/features/transportation/presentation/transportation_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class TransportationScreen
    extends StatelessWidget {
  const TransportationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Transportation',
      description:
          'Campus shuttles, routes and parking.',
      icon: Icons.directions_bus_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Campus Loop'),
            subtitle:
                Text('Next shuttle • 3 min'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Parking'),
            subtitle:
                Text('Permits and lots'),
          ),
        ),
      ],
    );
  }
}