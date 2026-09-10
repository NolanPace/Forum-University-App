// FILE: lib/features/courses/presentation/shared/course_header.dart

import 'package:flutter/material.dart';

class CourseHeader extends StatelessWidget {
  final String code;
  final String title;

  const CourseHeader({
    super.key,
    required this.code,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          code,
          style: TextStyle(
            color:
                Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}