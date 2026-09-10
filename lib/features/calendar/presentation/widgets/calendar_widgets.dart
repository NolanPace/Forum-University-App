// FILE: lib/features/calendar/presentation/widgets/calendar_widgets.dart

import 'package:flutter/material.dart';

class CalendarLegend
    extends StatelessWidget {
  const CalendarLegend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8,
      children: [
        Chip(label: Text('Classes')),
        Chip(label: Text('Assignments')),
        Chip(label: Text('Events')),
      ],
    );
  }
}