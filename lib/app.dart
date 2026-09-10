// FILE: lib/app.dart

import 'package:flutter/material.dart';

import 'app/shell/app_shell.dart';
import 'app/theme/app_theme.dart';
import 'auth/presentation/welcome_screen.dart';
import 'core/auth/auth_session.dart';

class PorticoApp extends StatelessWidget {
  const PorticoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portico',
          theme: AppTheme.light(),
          home: AuthSession.instance.user == null
              ? const WelcomeScreen()
              : const AppShell(),
        );
      },
    );
  }
}