// FILE: lib/features/finance/presentation/account_balance_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class AccountBalanceScreen
    extends StatelessWidget {
  const AccountBalanceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Account Balance',
      description:
          'Current university charges and credits.',
      icon: Icons.receipt_long_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Tuition'),
            trailing: Text('\$24,000'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Housing'),
            trailing: Text('\$5,400'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Scholarship'),
            trailing: Text('-\$18,000'),
          ),
        ),
      ],
    );
  }
}