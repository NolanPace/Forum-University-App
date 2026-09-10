// FILE: lib/features/assignments/presentation/shared/assignment_card.dart

import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;

  const AssignmentCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            const Icon(Icons.assignment_outlined),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(status),
      ),
    );
  }
}