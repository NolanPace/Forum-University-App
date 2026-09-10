// FILE: lib/features/exams/presentation/exam_details_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ExamDetailsScreen
    extends StatelessWidget {
  const ExamDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'CS 301 Midterm',
      description:
          'Sep 16 • 10:00 AM • Bannow 254',
      icon: Icons.quiz_outlined,
    );
  }
}