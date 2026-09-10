// FILE: lib/educator/home/widgets/educator_schedule.dart

import 'package:flutter/material.dart';

class EducatorSchedule
    extends StatelessWidget {
  const EducatorSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Text('10:00'),
          title: Text('CS 301'),
        ),
        ListTile(
          leading: Text('15:00'),
          title: Text('Office Hours'),
        ),
      ],
    );
  }
}