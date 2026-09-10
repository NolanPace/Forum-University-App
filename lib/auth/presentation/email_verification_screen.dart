// FILE: lib/auth/presentation/email_verification_screen.dart

import 'package:flutter/material.dart';

class EmailVerificationScreen
    extends StatelessWidget {
  const EmailVerificationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Verify your personal email.',
        ),
      ),
    );
  }
}