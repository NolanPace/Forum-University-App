// FILE: lib/app/shell/app_shell.dart

import 'package:flutter/material.dart';

import '../../core/auth/auth_session.dart';
import '../../institutions/presentation/add_institution_screen.dart';
import 'bottom_navigation.dart';
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

        final pages = StudentShellPages.pages;

        return Scaffold(
          body: IndexedStack(
            index:
                session.navigationIndex,
            children: pages,
          ),
          bottomNavigationBar:
              NavigationBar(
            selectedIndex:
                session.navigationIndex,
            onDestinationSelected:
                session.setNavigationIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.forum_outlined),
                selectedIcon: Icon(Icons.forum),
                label: 'Forums',
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications_none),
                selectedIcon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}