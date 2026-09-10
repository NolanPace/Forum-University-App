// FILE: lib/identity/presentation/profile_screen.dart

import 'package:flutter/material.dart';

import '../../auth/presentation/welcome_screen.dart';
import '../../core/auth/auth_session.dart';
import '../../institutions/presentation/add_institution_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        final session =
            AuthSession.instance;

        final user = session.user!;

        return SafeArea(
          child: ListView(
            padding:
                const EdgeInsets.all(20),
            children: [
              CircleAvatar(
                radius: 44,
                child: Text(
                  user.name[0].toUpperCase(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),
              ),
              Center(
                child: Text(
                  user.personalEmail,
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                'Universities',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              ...session.institutions.map(
                (institution) => Card(
                  margin:
                      const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: ListTile(
                    title:
                        Text(institution.name),
                    subtitle:
                      Text(user.accountType.name),
                    trailing:
                        institution.id ==
                                session
                                    .activeInstitution
                                    ?.id
                            ? const Icon(
                                Icons
                                    .check_circle,
                              )
                            : null,
                    onTap: () {
                      session
                          .switchInstitution(
                        institution,
                      );
                    },
                  ),
                ),
              ),
              OutlinedButton.icon(
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
              const SizedBox(height: 28),
              OutlinedButton.icon(
                onPressed: () {
                  session.signOut();

                  Navigator
                      .pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const WelcomeScreen(),
                    ),
                    (_) => false,
                  );
                },
                icon:
                    const Icon(Icons.logout),
                label: const Text(
                  'Sign Out of Portico',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}