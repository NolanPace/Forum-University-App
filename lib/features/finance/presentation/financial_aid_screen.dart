// FILE: lib/features/finance/presentation/financial_aid_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class FinancialAidScreen
    extends StatelessWidget {
  const FinancialAidScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Financial Aid',
      description:
          'Scholarships, grants and loans.',
      icon:
          Icons.account_balance_outlined,
    );
  }
}