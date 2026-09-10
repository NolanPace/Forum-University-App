// FILE: lib/features/attendance/presentation/attendance_screen.dart

import 'package:flutter/material.dart';

class AttendanceScreen
    extends StatelessWidget {
  const AttendanceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Attendance')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'CS 301 • Today',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text('Alice Johnson'),
          ),
          CheckboxListTile(
            value: true,
            onChanged: null,
            title: Text('Marcus Lee'),
          ),
          CheckboxListTile(
            value: false,
            onChanged: null,
            title: Text('Priya Shah'),
          ),
        ],
      ),
    );
  }
}