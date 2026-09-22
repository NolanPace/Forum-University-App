// FILE: lib/app.dart
// Root Forum application widget.

import 'package:flutter/material.dart';

import 'app/shell/app_shell.dart';
import 'app/theme/app_theme.dart';
import 'auth/presentation/welcome_screen.dart';
import 'core/auth/auth_session.dart';

class ForumApp extends StatelessWidget {
  const ForumApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        final AuthSession session =
            AuthSession.instance;

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Forum',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeMode.light,
          home: session.isSignedIn &&
                  session.user != null
              ? const AppShell()
              : const WelcomeScreen(),
        );
      },
    );
  }
}