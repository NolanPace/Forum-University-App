// FILE: lib/features/submissions/presentation/submission_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class SubmissionScreen
    extends StatelessWidget {
  const SubmissionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Submission',
      description:
          'Upload and review assignment submissions.',
      icon: Icons.upload_file_outlined,
    );
  }
}