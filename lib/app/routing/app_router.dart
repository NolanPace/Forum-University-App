// FILE: lib/app/routing/app_router.dart

import 'package:flutter/material.dart';

import '../../auth/presentation/welcome_screen.dart';
import '../shell/app_shell.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const AppShell(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
    }
  }
}