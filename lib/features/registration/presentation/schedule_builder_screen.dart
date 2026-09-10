// FILE: lib/features/registration/presentation/schedule_builder_screen.dart

import 'package:flutter/material.dart';

class ScheduleBuilderScreen
    extends StatelessWidget {
  const ScheduleBuilderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Schedule Builder'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Plan A',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          const Card(
            child: ListTile(
              title: Text('CS 340'),
              subtitle:
                  Text('MWF • 11:00 AM'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('MATH 310'),
              subtitle:
                  Text('TR • 1:00 PM'),
            ),
          ),
          const SizedBox(height: 18),
          FilledButton(
            onPressed: () {},
            child:
                const Text('Register Plan'),
          ),
        ],
      ),
    );
  }
}