// FILE: lib/features/housing/presentation/housing_home_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class HousingHomeScreen
    extends StatelessWidget {
  const HousingHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Housing',
      description:
          'Accommodation and residential services.',
      icon: Icons.home_work_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Current Housing'),
            subtitle: Text(
              'Bellarmine Hall • Room 214',
            ),
          ),
        ),
        Card(
          child: ListTile(
            title:
                Text('Housing Selection'),
            subtitle: Text(
              'Selection time • Oct 12, 4:20 PM',
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Maintenance'),
            subtitle:
                Text('Submit a request'),
          ),
        ),
      ],
    );
  }
}