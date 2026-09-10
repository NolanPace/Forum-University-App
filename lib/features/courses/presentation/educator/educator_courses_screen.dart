// FILE: lib/features/courses/presentation/educator/educator_courses_screen.dart

import 'package:flutter/material.dart';

import '../../../../institutions/presentation/institution_switcher.dart';
import '../shared/course_card.dart';
import 'educator_course_screen.dart';

class EducatorCoursesScreen
    extends StatelessWidget {
  const EducatorCoursesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const InstitutionSwitcher(),
          const SizedBox(height: 28),
          const Text(
            'Teaching',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 18),
          CourseCard(
            code: 'CS 301',
            title:
                'Algorithms & Data Structures',
            detail:
                '24 Students • MWF 10:00 AM',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      const EducatorCourseScreen(),
                ),
              );
            },
          ),
          const CourseCard(
            code: 'CS 101',
            title:
                'Introduction to Programming',
            detail:
                '32 Students • TR 2:00 PM',
          ),
        ],
      ),
    );
  }
}