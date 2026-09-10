// FILE: lib/app/shell/educator_shell.dart

import 'package:flutter/material.dart';

import '../../educator/home/educator_home_screen.dart';
import '../../features/calendar/presentation/calendar_screen.dart';
import '../../features/courses/presentation/educator/educator_courses_screen.dart';
import '../../features/messages/presentation/inbox_screen.dart';
import '../../identity/presentation/profile_screen.dart';

class EducatorShellPages {
  static const pages = <Widget>[
    EducatorHomeScreen(),
    EducatorCoursesScreen(),
    ForumCalendarScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
}