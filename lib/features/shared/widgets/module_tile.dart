// FILE: lib/shared/widgets/module_tile.dart

import 'package:flutter/material.dart';

import '../../../features/shared/module_router.dart';
import '../../../institutions/modules/university_module.dart';

class ModuleTile extends StatelessWidget {
  final UniversityModule module;

  const ModuleTile({
    super.key,
    required this.module,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ModuleRouter.screenFor(
              module.id,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Icon(
              module.icon,
              size: 30,
              color: Theme.of(context)
                  .colorScheme
                  .primary,
            ),
            const SizedBox(height: 10),
            Text(
              module.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}