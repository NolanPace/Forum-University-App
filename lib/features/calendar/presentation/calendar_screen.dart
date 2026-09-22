// FILE: lib/features/calendar/presentation/calendar_screen.dart

import 'package:flutter/material.dart';

import '../../../core/auth/auth_session.dart';
import '../../../institutions/presentation/institution_switcher.dart';

class ForumCalendarScreen
    extends StatelessWidget {
  const ForumCalendarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        const educator = false;

        return SafeArea(
          child: ListView(
            padding:
                const EdgeInsets.all(20),
            children: [
              const InstitutionSwitcher(),
              const SizedBox(height: 28),
              const Text(
                'Calendar',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
              const SizedBox(height: 18),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'September 2026',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '7   8   9   10   11   12   13',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                educator
                    ? 'Teaching & Meetings'
                    : 'Upcoming',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              const Card(
                child: ListTile(
                  title:
                      Text('Algorithms'),
                  subtitle: Text(
                    'Monday • 10:00 AM',
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