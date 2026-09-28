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

        // User is not signed in, or there is no saved Forum account.
        if (!session.isSignedIn || session.user == null) {
          home = const WelcomeScreen();
        }

        // User is signed in, but has not connected a university yet.
        else if (session.activeInstitution == null) {
          home = const AddInstitutionScreen();
        }

        // User is signed in and has an active university.
        else {
          home = const AppShell();
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Forum',

          // Forum themes
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),

          // Keep Forum in light mode for now.
          // We can make this user-selectable later.
          themeMode: ThemeMode.light,

          // Initial screen
          home: home,
        );
      },
    );
  }
}