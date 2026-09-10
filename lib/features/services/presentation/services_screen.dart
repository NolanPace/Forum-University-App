// FILE: lib/features/services/presentation/services_screen.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'University Services',
      description:
          'Support and administrative services.',
      icon: Icons.support_agent_outlined,
      children: [
        Card(
          child: ListTile(
            title:
                Text('Academic Advising'),
          ),
        ),
        Card(
          child:
              ListTile(title: Text('Registrar')),
        ),
        Card(
          child:
              ListTile(title: Text('IT Help')),
        ),
        Card(
          child:
              ListTile(title: Text('Career Center')),
        ),
      ],
    );
  }
}