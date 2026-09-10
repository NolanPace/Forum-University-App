// FILE: lib/features/notifications/presentation/notifications_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class NotificationsScreen
    extends StatelessWidget {
  const NotificationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Notifications',
      description:
          'Your university activity feed.',
      icon: Icons.notifications_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text(
              'Registration opens tomorrow',
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Homework 4 due tonight',
            ),
          ),
        ),
      ],
    );
  }
}