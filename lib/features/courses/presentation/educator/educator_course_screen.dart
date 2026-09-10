// FILE: lib/features/courses/presentation/educator/educator_course_screen.dart

import 'package:flutter/material.dart';

class EducatorCourseScreen
    extends StatelessWidget {
  const EducatorCourseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('CS 301')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Algorithms & Data Structures',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 18),
          Wrap(
            spacing: 8,
            children: [
              Chip(label: Text('Overview')),
              Chip(
                label: Text('Assignments'),
              ),
              Chip(label: Text('Gradebook')),
              Chip(label: Text('Students')),
              Chip(label: Text('Attendance')),
              Chip(label: Text('Settings')),
            ],
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              title: Text('24 Students'),
              subtitle:
                  Text('MWF • 10:00 AM'),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              title: Text('Homework 4'),
              subtitle:
                  Text('18 submitted • 12 ungraded'),
            ),
          ),
        ],
      ),
    );
  }
}