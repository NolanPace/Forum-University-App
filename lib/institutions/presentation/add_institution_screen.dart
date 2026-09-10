// FILE: lib/institutions/presentation/add_institution_screen.dart

import 'package:flutter/material.dart';

import '../../app/shell/app_shell.dart';
import '../../core/auth/auth_session.dart';
import '../models/institution.dart';

class AddInstitutionScreen
    extends StatefulWidget {
  final bool firstInstitution;

  const AddInstitutionScreen({
    super.key,
    this.firstInstitution = false,
  });

  @override
  State<AddInstitutionScreen> createState() =>
      _AddInstitutionScreenState();
}

class _AddInstitutionScreenState
    extends State<AddInstitutionScreen> {
  final searchController =
      TextEditingController();

  static const institutions = [
    Institution(
      id: 'fairfield',
      name: 'Fairfield University',
      shortName: 'Fairfield',
      location: 'Fairfield, Connecticut',
    ),
    Institution(
      id: 'yale',
      name: 'Yale University',
      shortName: 'Yale',
      location: 'New Haven, Connecticut',
    ),
    Institution(
      id: 'edinburgh',
      name: 'University of Edinburgh',
      shortName: 'Edinburgh',
      location: 'Edinburgh, Scotland',
    ),
    Institution(
      id: 'mit',
      name:
          'Massachusetts Institute of Technology',
      shortName: 'MIT',
      location: 'Cambridge, Massachusetts',
    ),
  ];

  void connect(
    Institution institution,
  ) {
    AuthSession.instance.addInstitution(
      institution,
    );

    if (widget.firstInstitution) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const AppShell(),
        ),
        (_) => false,
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final query =
        searchController.text.toLowerCase();

    final results = institutions.where(
      (institution) {
        return institution.name
                .toLowerCase()
                .contains(query) ||
            institution.location
                .toLowerCase()
                .contains(query);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add University'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          const Text(
            'Connect your university',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: searchController,
            onChanged: (_) => setState(() {}),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search universities',
            ),
          ),
          const SizedBox(height: 18),
          ...results.map(
            (institution) => Card(
              margin:
                  const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    institution.shortName[0],
                  ),
                ),
                title: Text(institution.name),
                subtitle:
                    Text(institution.location),
                trailing:
                    const Icon(Icons.chevron_right),
                onTap: () =>
                    connect(institution),
              ),
            ),
          ),
        ],
      ),
    );
  }
}