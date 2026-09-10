// FILE: lib/features/shared/module_router.dart

import 'package:flutter/material.dart';

import '../advising/presentation/advising_home_screen.dart';
import '../assistant/presentation/assistant_screen.dart';
import '../assignments/presentation/educator/educator_assignments_screen.dart';
import '../attendance/presentation/attendance_screen.dart';
import '../clubs/presentation/clubs_screen.dart';
import '../degree-progress/presentation/degree_progress_screen.dart';
import '../directory/presentation/directory_screen.dart';
import '../exams/presentation/exams_screen.dart';
import '../finance/presentation/finance_home_screen.dart';
import '../grades/presentation/educator/gradebook_screen.dart';
import '../grades/presentation/student/grades_screen.dart';
import '../housing/presentation/housing_home_screen.dart';
import '../news/presentation/news_screen.dart';
import '../office-hours/presentation/office_hours_screen.dart';
import '../registration/presentation/registration_screen.dart';
import '../reservations/presentation/spaces_screen.dart';
import '../services/presentation/services_screen.dart';
import '../transportation/presentation/transportation_screen.dart';

class ModuleRouter {
  static Widget screenFor(
    String id,
  ) {
    return switch (id) {
      'registration' =>
        const RegistrationScreen(),
      'grades' => const GradesScreen(),
      'degree' =>
        const DegreeProgressScreen(),
      'finance' =>
        const FinanceHomeScreen(),
      'housing' =>
        const HousingHomeScreen(),
      'spaces' => const SpacesScreen(),
      'exams' => const ExamsScreen(),
      'clubs' => const ClubsScreen(),
      'transport' =>
        const TransportationScreen(),
      'services' =>
        const ServicesScreen(),
      'news' => const NewsScreen(),
      'assistant' =>
        const AssistantScreen(),
      'gradebook' =>
        const GradebookScreen(),
      'assignments' =>
        const EducatorAssignmentsScreen(),
      'students' =>
        const DirectoryScreen(),
      'attendance' =>
        const AttendanceScreen(),
      'advising' =>
        const AdvisingHomeScreen(),
      'office_hours' =>
        const OfficeHoursScreen(),
      'directory' =>
        const DirectoryScreen(),
      _ => const Scaffold(
          body: Center(
            child:
                Text('Module unavailable'),
          ),
        ),
    };
  }
}