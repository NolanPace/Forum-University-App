// FILE: lib/student/home/student_home_screen.dart

import 'package:flutter/material.dart';

import '../../core/auth/auth_session.dart';
import '../../features/assistant/presentation/command_bar.dart';
import '../../institutions/modules/module_registry.dart';
import '../../institutions/presentation/institution_switcher.dart';
import '../../shared/widgets/dashboard_card.dart';
import '../../shared/widgets/module_tile.dart';

class StudentHomeScreen
    extends StatelessWidget {
  const StudentHomeScreen({
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
            label: 'Next Class',
            title: 'CS 301 • Algorithms',
            subtitle:
                '10:00 AM • Bannow 254',
            icon: Icons.menu_book,
          ),
          const SizedBox(height: 26),
          const Text(
            'Quick Access',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount:
                ModuleRegistry.studentModules.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return ModuleTile(
                module: ModuleRegistry
                    .studentModules[index],
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