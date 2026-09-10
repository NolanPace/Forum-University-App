// FILE: lib/educator/home/widgets/grading_summary.dart

import 'package:flutter/material.dart';

class GradingSummary extends StatelessWidget {
  const GradingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title:
            Text('CS 301 Homework 4'),
        subtitle: Text(
          '18 of 24 submissions reviewed',
        ),
      ),
    );
  }
}