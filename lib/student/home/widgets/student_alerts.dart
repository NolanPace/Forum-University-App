// FILE: lib/student/home/widgets/student_alerts.dart

import 'package:flutter/material.dart';

class StudentAlerts extends StatelessWidget {
  const StudentAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading:
            Icon(Icons.notifications_outlined),
        title: Text(
          'Registration opens next week',
        ),
        subtitle: Text(
          'Review your planned courses.',
        ),
      ),
    );
  }
}