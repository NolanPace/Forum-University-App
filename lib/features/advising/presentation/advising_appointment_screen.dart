// FILE: lib/features/advising/presentation/advising_appointment_screen.dart

import 'package:flutter/material.dart';

class AdvisingAppointmentScreen
    extends StatelessWidget {
  const AdvisingAppointmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Book Advising')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Card(
            child: ListTile(
              title:
                  Text('Tuesday • 2:30 PM'),
              subtitle:
                  Text('20 minutes'),
            ),
          ),
          const SizedBox(height: 14),
          FilledButton(
            onPressed: () {},
            child:
                const Text('Book Appointment'),
          ),
        ],
      ),
    );
  }
}