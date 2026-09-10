// FILE: lib/student/profile/student_profile_screen.dart

import 'package:flutter/material.dart';

class StudentProfileScreen
    extends StatelessWidget {
  const StudentProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Institution Student Profile',
        ),
      ),
    );
  }
}