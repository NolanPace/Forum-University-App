// FILE: lib/features/transportation/presentation/route_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Campus Loop',
      description: 'Route stops',
      icon: Icons.route_outlined,
    );
  }
}