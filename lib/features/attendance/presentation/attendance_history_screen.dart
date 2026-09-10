// FILE: lib/features/attendance/presentation/attendance_history_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class AttendanceHistoryScreen
    extends StatelessWidget {
  const AttendanceHistoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Attendance History',
      description:
          'Historical course attendance.',
      icon: Icons.history,
    );
  }
}