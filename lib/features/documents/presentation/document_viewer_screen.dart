// FILE: lib/features/documents/presentation/document_viewer_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class DocumentViewerScreen
    extends StatelessWidget {
  const DocumentViewerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Document',
      description:
          'Document preview will render here.',
      icon: Icons.picture_as_pdf_outlined,
    );
  }
}