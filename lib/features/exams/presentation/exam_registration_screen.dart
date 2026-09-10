// FILE: lib/features/exams/presentation/exam_registration_screen.dart

import 'package:flutter/material.dart';

class ExamRegistrationScreen
    extends StatelessWidget {
  const ExamRegistrationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Exam Registration')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Card(
            child: ListTile(
              title:
                  Text('Testing Center Seat'),
              subtitle:
                  Text('Sep 16 • 10:00 AM'),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}