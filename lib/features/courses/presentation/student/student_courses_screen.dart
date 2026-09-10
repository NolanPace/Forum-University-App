// FILE: lib/features/courses/presentation/student/student_courses_screen.dart

import 'package:flutter/material.dart';

import '../../../../institutions/presentation/institution_switcher.dart';
import '../shared/course_card.dart';
import 'student_course_screen.dart';

class StudentCoursesScreen
    extends StatelessWidget {
  const StudentCoursesScreen({
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
            'My Courses',
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
                'MWF • 10:00 AM • Bannow 254',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      const StudentCourseScreen(),
                ),
              );
            },
          ),
          const CourseCard(
            code: 'MATH 221',
            title: 'Linear Algebra',
            detail:
                'TR • 11:00 AM • CNS 102',
          ),
          const CourseCard(
            code: 'ECON 211',
            title:
                'Macroeconomic Analysis',
            detail:
                'TR • 1:00 PM • Dolan 105',
          ),
        ],
      ),
    );
  }
}