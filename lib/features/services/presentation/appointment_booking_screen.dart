// FILE: lib/features/services/presentation/appointment_booking_screen.dart

import 'package:flutter/material.dart';

class AppointmentBookingScreen
    extends StatelessWidget {
  const AppointmentBookingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Book Appointment')),
      body: Center(
        child: FilledButton(
          onPressed: () {},
          child: const Text(
            'Confirm Appointment',
          ),
        ),
      ),
    );
  }
}