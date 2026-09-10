// FILE: lib/features/services/presentation/service_details_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ServiceDetailsScreen
    extends StatelessWidget {
  const ServiceDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Academic Advising',
      description:
          'Appointments and academic planning.',
      icon: Icons.school_outlined,
    );
  }
}