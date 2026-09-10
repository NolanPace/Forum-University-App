// FILE: lib/features/registration/presentation/course_details_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class CourseDetailsScreen
    extends StatelessWidget {
  const CourseDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'CS 340',
      description:
          'Operating Systems • 3 credits',
      icon: Icons.menu_book_outlined,
      children: [
        Card(
          child: ListTile(
            title: Text('Prerequisites'),
            subtitle:
                Text('✓ CS 240 satisfied'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Section 01'),
            subtitle: Text(
              'MWF 11:00 AM • 12 seats available',
            ),
          ),
        ),
      ],
    );
  }
}