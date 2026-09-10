// FILE: lib/features/directory/presentation/person_profile_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class PersonProfileScreen
    extends StatelessWidget {
  const PersonProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Dr. Jane Smith',
      description:
          'Professor • Computer Science • Dolan 310',
      icon: Icons.person_outline,
    );
  }
}