// FILE: lib/features/registration/presentation/course_search_screen.dart

import 'package:flutter/material.dart';

class CourseSearchScreen
    extends StatelessWidget {
  const CourseSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Course Search')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search courses',
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text(
                'CS 340 • Operating Systems',
              ),
              subtitle: Text(
                'MWF 11:00 AM • 12 seats available',
              ),
              trailing:
                  Icon(Icons.add_circle_outline),
            ),
          ),
        ],
      ),
    );
  }
}