// FILE: lib/features/messages/presentation/inbox_screen.dart

import 'package:flutter/material.dart';

import '../../../core/auth/auth_session.dart';
import '../../../institutions/presentation/institution_switcher.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        final student =
            AuthSession.instance.isStudent;

        return SafeArea(
          child: ListView(
            padding:
                const EdgeInsets.all(20),
            children: [
              const InstitutionSwitcher(),
              const SizedBox(height: 28),
              const Text(
                'Messages',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.search),
                  hintText:
                      'Search messages',
                ),
              ),
              const SizedBox(height: 14),
              Card(
                child: ListTile(
                  title: Text(
                    student
                        ? 'Professor Smith'
                        : 'Alice Johnson',
                  ),
                  subtitle: Text(
                    student
                        ? 'Assignment clarification'
                        : 'Question about Homework 4',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}