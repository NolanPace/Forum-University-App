// FILE: lib/features/notifications/presentation/notification_settings_screen.dart

import 'package:flutter/material.dart';

class NotificationSettingsScreen
    extends StatelessWidget {
  const NotificationSettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SwitchListTile(
              value: true,
              onChanged: null,
              title: Text('Courses'),
            ),
            SwitchListTile(
              value: true,
              onChanged: null,
              title:
                  Text('University announcements'),
            ),
            SwitchListTile(
              value: true,
              onChanged: null,
              title: Text('Messages'),
            ),
          ],
        ),
      ),
    );
  }
}