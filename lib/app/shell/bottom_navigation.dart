// FILE: lib/app/shell/bottom_navigation.dart

import 'package:flutter/material.dart';

class ForumNavigationBar
    extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>
      onDestinationSelected;

  const ForumNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected:
          onDestinationSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon:
              Icon(Icons.menu_book_outlined),
          selectedIcon:
              Icon(Icons.menu_book),
          label: 'Courses',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.calendar_month_outlined,
          ),
          selectedIcon:
              Icon(Icons.calendar_month),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon:
              Icon(Icons.chat_bubble_outline),
          selectedIcon:
              Icon(Icons.chat_bubble),
          label: 'Messages',
        ),
        NavigationDestination(
          icon:
              Icon(Icons.person_outline),
          selectedIcon:
              Icon(Icons.person),
          label: 'Me',
        ),
      ],
    );
  }
}