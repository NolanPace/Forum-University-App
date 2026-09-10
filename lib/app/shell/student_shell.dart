// FILE: lib/app/shell/student_shell.dart

import 'package:flutter/material.dart';

import '../../features/calendar/presentation/calendar_screen.dart';
import '../../features/courses/presentation/student/student_courses_screen.dart';
import '../../features/messages/presentation/inbox_screen.dart';
import '../../identity/presentation/profile_screen.dart';
import '../../student/home/student_home_screen.dart';

class StudentShellPages {
  static const pages = <Widget>[
    StudentHomeScreen(),
    StudentCoursesScreen(),
    ForumCalendarScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
}