// FILE: lib/institutions/presentation/institution_login_screen.dart

import 'package:flutter/material.dart';

class InstitutionLoginScreen
    extends StatelessWidget {
  final String institutionName;

  const InstitutionLoginScreen({
    super.key,
    required this.institutionName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Connect $institutionName'),
      ),
      body: const Center(
        child: Text(
          'Institution SSO will launch here.',
        ),
      ),
    );
  }
}