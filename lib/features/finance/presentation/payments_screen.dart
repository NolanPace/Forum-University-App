// FILE: lib/features/finance/presentation/payments_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Payments',
      description:
          'Payment history and methods.',
      icon: Icons.credit_card_outlined,
    );
  }
}