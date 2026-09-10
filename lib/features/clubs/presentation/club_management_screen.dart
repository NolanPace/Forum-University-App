// FILE: lib/features/clubs/presentation/club_management_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ClubManagementScreen
    extends StatelessWidget {
  const ClubManagementScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Club Management',
      description:
          'Members, events, funding and forms.',
      icon: Icons.admin_panel_settings_outlined,
      children: [
        Card(
          child:
              ListTile(title: Text('Manage Members')),
        ),
        Card(
          child:
              ListTile(title: Text('Create Event')),
        ),
        Card(
          child:
              ListTile(title: Text('Request Funding')),
        ),
      ],
    );
  }
}