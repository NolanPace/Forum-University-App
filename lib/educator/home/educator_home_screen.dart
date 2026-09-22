// FILE: lib/educator/home/educator_home_screen.dart

import 'package:flutter/material.dart';

import '../../core/auth/auth_session.dart';
import '../../features/assistant/presentation/command_bar.dart';
import '../../institutions/modules/module_registry.dart';
import '../../institutions/presentation/institution_switcher.dart';
import '../../shared/widgets/dashboard_card.dart';

class EducatorHomeScreen
    extends StatelessWidget {
  const EducatorHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user =
        AuthSession.instance.user!;

    return SafeArea(
      child: ListView(
        padding:
            const EdgeInsets.fromLTRB(
          20,
          18,
          20,
          100,
        ),
        children: [
          Row(
            children: [
              const Expanded(
                child:
                    InstitutionSwitcher(),
              ),
              CircleAvatar(
                child: Text(
                  user.name[0].toUpperCase(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Text(
            'Good afternoon,',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 22),
          const DashboardCard(
            title: 'CS 301 • Algorithms',
            subtitle:
                '10:00 AM • 24 Students',
            icon: Icons.co_present,
          ),
          const SizedBox(height: 26),
          const Card(
            child: ListTile(
              title:
                  Text('12 submissions to grade'),
              subtitle:
                  Text('Homework 4 • CS 301'),
            ),
          ),
          const SizedBox(height: 26),
          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount: ModuleRegistry
                .educatorModules.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return const Card(
                child: Center(
                  child: Icon(Icons.apps),
                ),
              );
            },
          ),
          const SizedBox(height: 26),
          const CommandBar(),
        ],
      ),
    );
  }
}