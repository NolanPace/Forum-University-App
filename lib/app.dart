// FILE: lib/app.dart
// Root Forum application widget.

import 'package:flutter/material.dart';

import 'app/shell/app_shell.dart';
import 'app/theme/app_theme.dart';
import 'auth/presentation/welcome_screen.dart';
import 'core/auth/auth_session.dart';
import 'institutions/presentation/add_institution_screen.dart';

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
        final AuthSession session = AuthSession.instance;

        Widget home;

        // No active Forum session
        if (!session.isSignedIn || session.user == null) {
          home = const WelcomeScreen();
        }

        // Signed in, but no university has been connected yet
        else if (session.activeInstitution == null) {
          home = const AddInstitutionScreen();
        }

        // Signed in and institution is available
        else {
          home = const AppShell();
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Forum',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeMode.light,
          home: home,
        );
      },
    );
  }
}