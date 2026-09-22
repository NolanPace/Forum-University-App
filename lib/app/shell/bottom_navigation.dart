// FILE: lib/app/shell/bottom_navigation.dart
// Permanent bottom navigation for Forum.

import 'package:flutter/material.dart';

import '../theme/app_icons.dart';

class ForumBottomNavigation extends StatelessWidget {
  const ForumBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected:
          onDestinationSelected,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(
            ForumIcons.home,
          ),
          selectedIcon: Icon(
            ForumIcons.home,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            ForumIcons.courses,
          ),
          selectedIcon: Icon(
            ForumIcons.courses,
          ),
          label: 'Courses',
        ),
        NavigationDestination(
          icon: Icon(
            ForumIcons.calendar,
          ),
          selectedIcon: Icon(
            ForumIcons.calendar,
          ),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: Icon(
            ForumIcons.messages,
          ),
          selectedIcon: Icon(
            ForumIcons.messages,
          ),
          label: 'Messages',
        ),
        NavigationDestination(
          icon: Icon(
            ForumIcons.profile,
          ),
          selectedIcon: Icon(
            ForumIcons.profile,
          ),
          label: 'Me',
        ),
      ],
    );
  }
}