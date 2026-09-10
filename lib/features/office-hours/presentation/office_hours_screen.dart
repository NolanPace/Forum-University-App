// FILE: lib/features/office_hours/presentation/office_hours_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class OfficeHoursScreen
    extends StatelessWidget {
  const OfficeHoursScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Office Hours',
      description:
          'Manage educator availability.',
      icon: Icons.schedule_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Tuesday'),
            subtitle:
                Text('2:00–4:00 PM'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Thursday'),
            subtitle:
                Text('1:00–3:00 PM'),
          ),
        ),
      ],
    );
  }
}