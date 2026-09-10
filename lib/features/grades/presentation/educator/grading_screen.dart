// FILE: lib/features/grades/presentation/educator/grading_screen.dart

import 'package:flutter/material.dart';

class GradingScreen extends StatelessWidget {
  const GradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Grade Submission')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Score',
            ),
          ),
          const SizedBox(height: 12),
          const TextField(
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'Feedback',
            ),
          ),
          const SizedBox(height: 18),
          FilledButton(
            onPressed: () {},
            child: const Text('Save Grade'),
          ),
        ],
      ),
    );
  }
}