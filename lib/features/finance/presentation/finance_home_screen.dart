// FILE: lib/features/finance/presentation/finance_home_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class FinanceHomeScreen
    extends StatelessWidget {
  const FinanceHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureScaffold(
      title: 'Finance',
      description: 'Balance due: \$3,482.50',
      icon:
          Icons.account_balance_wallet_outlined,
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text('Pay Balance'),
        ),
        const SizedBox(height: 14),
        const Card(
          child: ListTile(
            title: Text('Financial Aid'),
            subtitle: Text(
              'Scholarships, grants and loans',
            ),
          ),
        ),
        const Card(
          child: ListTile(
            title: Text('Documents'),
            subtitle: Text(
              'Statements and receipts',
            ),
          ),
        ),
      ],
    );
  }
}