// FILE: lib/features/news/presentation/article_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title:
          'Registration opens next week',
      description:
          'Students can review planned courses, holds and prerequisites in Portico.',
      icon: Icons.article_outlined,
    );
  }
}