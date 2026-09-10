// FILE: lib/features/housing/presentation/packages_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Packages',
      description:
          'Campus mail and package pickup.',
      icon: Icons.inventory_2_outlined,
    );
  }
}