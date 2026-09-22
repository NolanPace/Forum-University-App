// FILE: lib/features/messages/presentation/inbox_screen.dart

import 'package:flutter/material.dart';

import '../../../institutions/presentation/institution_switcher.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const InstitutionSwitcher(),
          const SizedBox(height: 28),
          const Text(
            'Messages',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search messages',
            ),
          ),
          const SizedBox(height: 14),
          const Card(
            child: ListTile(
              title: Text('Messages'),
              subtitle: Text('No new messages'),
            ),
          ),
        ],
      ),
    );
  }
}