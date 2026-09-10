// FILE: lib/student/home/widgets/today_schedule.dart

import 'package:flutter/material.dart';

class TodaySchedule extends StatelessWidget {
  const TodaySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Text('10:00'),
          title: Text('Algorithms'),
          subtitle: Text('Bannow 254'),
        ),
        ListTile(
          leading: Text('13:00'),
          title: Text('Economics'),
          subtitle: Text('Dolan 105'),
        ),
      ],
    );
  }
}