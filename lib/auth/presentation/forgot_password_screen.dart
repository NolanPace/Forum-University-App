// FILE: lib/auth/presentation/forgot_password_screen.dart

import 'package:flutter/material.dart';

class ForgotPasswordScreen
    extends StatelessWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Password recovery'),
      ),
    );
  }
}