// FILE: lib/features/news/presentation/news_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'University News',
      description:
          'News, announcements and campus information.',
      icon: Icons.newspaper_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text(
              'Registration opens next week',
            ),
            subtitle:
                Text('Academics • Today'),
          ),
        ),
        Card(
          child: ListTile(
            title:
                Text('Campus club fair announced'),
            subtitle:
                Text('Student Life'),
          ),
        ),
      ],
    );
  }
}