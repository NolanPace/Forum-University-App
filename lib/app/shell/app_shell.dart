// FILE: lib/app/shell/app_shell.dart

import 'package:flutter/material.dart';

import '../../core/auth/auth_session.dart';
import '../../institutions/presentation/add_institution_screen.dart';
import 'bottom_navigation.dart';
import 'educator_shell.dart';
import 'student_shell.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        final session =
            AuthSession.instance;

        if (session.activeInstitution ==
            null) {
          return Scaffold(
            body: Center(
              child: FilledButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const AddInstitutionScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Add University',
                ),
              ),
            ),
          );
        }

        final pages = session.isStudent
            ? StudentShellPages.pages
            : EducatorShellPages.pages;

        return Scaffold(
          body: IndexedStack(
            index:
                session.navigationIndex,
            children: pages,
          ),
          bottomNavigationBar:
              ForumNavigationBar(
            selectedIndex:
                session.navigationIndex,
            onDestinationSelected:
                session.setNavigationIndex,
          ),
        );
      },
    );
  }
}