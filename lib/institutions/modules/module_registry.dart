// FILE: lib/institutions/modules/module_registry.dart

import 'package:flutter/material.dart';

import '../../identity/models/account_type.dart';
import 'university_module.dart';

class ModuleRegistry {
  static List<UniversityModule>
      forAccountType(
    AccountType type,
  ) {
    return type == AccountType.student
        ? studentModules
        : educatorModules;
  }

  static const studentModules = [
    UniversityModule(
      id: 'registration',
      title: 'Registration',
      description: 'Search and register for courses.',
      icon: Icons.how_to_reg_outlined,
    ),
    UniversityModule(
      id: 'grades',
      title: 'Grades',
      description: 'Grades and academic results.',
      icon: Icons.grade_outlined,
    ),
    UniversityModule(
      id: 'degree',
      title: 'Degree',
      description: 'Degree progress.',
      icon: Icons.school_outlined,
    ),
    UniversityModule(
      id: 'finance',
      title: 'Finance',
      description: 'Fees and financial aid.',
      icon: Icons.account_balance_wallet_outlined,
    ),
    UniversityModule(
      id: 'housing',
      title: 'Housing',
      description: 'Accommodation.',
      icon: Icons.home_work_outlined,
    ),
    UniversityModule(
      id: 'spaces',
      title: 'Spaces',
      description: 'Reserve study spaces.',
      icon: Icons.meeting_room_outlined,
    ),
    UniversityModule(
      id: 'exams',
      title: 'Exams',
      description: 'Exam registration.',
      icon: Icons.assignment_turned_in_outlined,
    ),
    UniversityModule(
      id: 'clubs',
      title: 'Clubs',
      description: 'Clubs and societies.',
      icon: Icons.groups_outlined,
    ),
    UniversityModule(
      id: 'transport',
      title: 'Transport',
      description: 'Campus transportation.',
      icon: Icons.directions_bus_outlined,
    ),
    UniversityModule(
      id: 'services',
      title: 'Services',
      description: 'Student services.',
      icon: Icons.support_agent_outlined,
    ),
    UniversityModule(
      id: 'news',
      title: 'News',
      description: 'University news.',
      icon: Icons.newspaper_outlined,
    ),
    UniversityModule(
      id: 'assistant',
      title: 'Portico AI',
      description: 'Ask Portico.',
      icon: Icons.auto_awesome_outlined,
    ),
  ];

  static const educatorModules = [
    UniversityModule(
      id: 'gradebook',
      title: 'Gradebook',
      description: 'Manage grades.',
      icon: Icons.fact_check_outlined,
    ),
    UniversityModule(
      id: 'assignments',
      title: 'Assignments',
      description: 'Manage assignments.',
      icon: Icons.assignment_outlined,
    ),
    UniversityModule(
      id: 'students',
      title: 'Students',
      description: 'Class rosters.',
      icon: Icons.groups_outlined,
    ),
    UniversityModule(
      id: 'attendance',
      title: 'Attendance',
      description: 'Record attendance.',
      icon: Icons.check_circle_outline,
    ),
    UniversityModule(
      id: 'advising',
      title: 'Advising',
      description: 'Advisees.',
      icon: Icons.school_outlined,
    ),
    UniversityModule(
      id: 'office_hours',
      title: 'Office Hours',
      description: 'Availability.',
      icon: Icons.schedule_outlined,
    ),
    UniversityModule(
      id: 'spaces',
      title: 'Spaces',
      description: 'Reserve rooms.',
      icon: Icons.meeting_room_outlined,
    ),
    UniversityModule(
      id: 'directory',
      title: 'Directory',
      description: 'University directory.',
      icon: Icons.badge_outlined,
    ),
    UniversityModule(
      id: 'services',
      title: 'Services',
      description: 'Faculty services.',
      icon: Icons.support_agent_outlined,
    ),
    UniversityModule(
      id: 'news',
      title: 'News',
      description: 'University news.',
      icon: Icons.newspaper_outlined,
    ),
    UniversityModule(
      id: 'assistant',
      title: 'Portico AI',
      description: 'University assistant.',
      icon: Icons.auto_awesome_outlined,
    ),
  ];
}