// FILE: lib/institutions/presentation/widgets/institution_card.dart

import 'package:flutter/material.dart';
import '../../models/institution.dart';

class InstitutionCard
    extends StatelessWidget {
  final Institution institution;
  final VoidCallback? onTap;

  const InstitutionCard({
    super.key,
    required this.institution,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(institution.name),
        trailing:
            const Icon(Icons.chevron_right),
      ),
    );
  }
}