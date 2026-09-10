// FILE: lib/features/reservations/presentation/reservation_screen.dart

import 'package:flutter/material.dart';

class ReservationScreen
    extends StatelessWidget {
  const ReservationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Reserve Space')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(
            decoration:
                InputDecoration(labelText: 'Date'),
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration:
                InputDecoration(labelText: 'Time'),
          ),
          const SizedBox(height: 18),
          FilledButton(
            onPressed: () {},
            child: const Text('Reserve'),
          ),
        ],
      ),
    );
  }
}