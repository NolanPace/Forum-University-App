// FILE: lib/features/finance/presentation/finance_documents_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class FinanceDocumentsScreen
    extends StatelessWidget {
  const FinanceDocumentsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Finance Documents',
      description:
          'Statements, receipts and tax forms.',
      icon: Icons.description_outlined,
    );
  }
}