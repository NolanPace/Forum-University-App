// FILE: lib/features/registration/presentation/registration_screen.dart

import 'package:flutter/material.dart';

import 'course_search_screen.dart';
import 'holds_screen.dart';
import 'schedule_builder_screen.dart';
import 'waitlist_screen.dart';

class RegistrationScreen
    extends StatelessWidget {
  const RegistrationScreen({
    super.key,
  });

  void open(
    BuildContext context,
    Widget page,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Registration')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            leading:
                const Icon(Icons.search),
            title:
                const Text('Course Search'),
            subtitle:
                const Text('Find courses'),
            trailing:
                const Icon(Icons.chevron_right),
            onTap: () => open(
              context,
              const CourseSearchScreen(),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_view_week,
            ),
            title:
                const Text('Schedule Builder'),
            trailing:
                const Icon(Icons.chevron_right),
            onTap: () => open(
              context,
              const ScheduleBuilderScreen(),
            ),
          ),
          ListTile(
            leading:
                const Icon(Icons.hourglass_bottom),
            title: const Text('Waitlists'),
            trailing:
                const Icon(Icons.chevron_right),
            onTap: () => open(
              context,
              const WaitlistScreen(),
            ),
          ),
          ListTile(
            leading:
                const Icon(Icons.block),
            title: const Text('Holds'),
            trailing:
                const Icon(Icons.chevron_right),
            onTap: () => open(
              context,
              const HoldsScreen(),
            ),
          ),
        ],
      ),
    );
  }
}