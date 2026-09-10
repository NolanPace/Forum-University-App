// FILE: lib/features/courses/presentation/student/student_course_screen.dart

import 'package:flutter/material.dart';

class StudentCourseScreen
    extends StatelessWidget {
  const StudentCourseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CS 301'),
      ),
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
              Chip(label: Text('Materials')),
              Chip(label: Text('Grades')),
              Chip(label: Text('People')),
            ],
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              title: Text('Homework 4'),
              subtitle:
                  Text('Due Sep 14 • 100 points'),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              title:
                  Text('Week 3 Materials'),
              subtitle: Text(
                'Slides • Reading • Example code',
              ),
            ),
          ),
        ],
      ),
    );
  }
}