// FILE: lib/features/office_hours/presentation/office_hour_booking_screen.dart

import 'package:flutter/material.dart';

class OfficeHourBookingScreen
    extends StatelessWidget {
  const OfficeHourBookingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Book Office Hours')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Card(
            child: ListTile(
              title:
                  Text('Tuesday • 2:20 PM'),
              subtitle:
                  Text('20 minute appointment'),
            ),
          ),
          FilledButton(
            onPressed: () {},
            child: const Text('Book'),
          ),
        ],
      ),
    );
  }
}