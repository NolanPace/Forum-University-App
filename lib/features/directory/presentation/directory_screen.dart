// FILE: lib/features/directory/presentation/directory_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class DirectoryScreen
    extends StatelessWidget {
  const DirectoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'University Directory',
      description:
          'People, faculty, staff and departments.',
      icon: Icons.badge_outlined,
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search directory',
          ),
        ),
        SizedBox(height: 16),
        Card(
          child: ListTile(
            title: Text('Dr. Jane Smith'),
            subtitle:
                Text('Computer Science'),
          ),
        ),
      ],
    );
  }
}