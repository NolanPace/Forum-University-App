// FILE: lib/features/housing/presentation/housing_application_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class HousingApplicationScreen
    extends StatelessWidget {
  const HousingApplicationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Housing Application',
      description:
          'Application and deposit status.',
      icon: Icons.assignment_outlined,
    );
  }
}