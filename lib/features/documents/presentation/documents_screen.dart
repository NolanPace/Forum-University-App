// FILE: lib/features/documents/presentation/documents_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class DocumentsScreen
    extends StatelessWidget {
  const DocumentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Documents',
      description:
          'Academic and university documents.',
      icon: Icons.folder_outlined,
      children: [
        Card(
          child: ListTile(
            title:
                Text('Unofficial Transcript'),
          ),
        ),
        Card(
          child: ListTile(
            title:
                Text('Enrollment Verification'),
          ),
        ),
      ],
    );
  }
}