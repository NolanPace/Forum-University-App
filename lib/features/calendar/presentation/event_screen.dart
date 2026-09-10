// FILE: lib/features/calendar/presentation/event_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Algorithms',
      description:
          'Monday • 10:00 AM • Bannow 254',
      icon: Icons.event_outlined,
    );
  }
}