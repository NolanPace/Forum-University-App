// FILE: lib/features/courses/presentation/shared/course_card.dart

import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String code;
  final String title;
  final String detail;
  final VoidCallback? onTap;

  const CourseCard({
    super.key,
    required this.code,
    required this.title,
    required this.detail,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        contentPadding:
            const EdgeInsets.all(18),
        leading: const CircleAvatar(
          child: Icon(Icons.menu_book),
        ),
        title: Text(
          code,
          style: TextStyle(
            color:
                Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
        ),
        subtitle: Text(
          '$title\n$detail',
        ),
        isThreeLine: true,
        trailing:
            const Icon(Icons.chevron_right),
      ),
    );
  }
}