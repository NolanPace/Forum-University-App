// FILE: lib/institutions/presentation/widgets/institution_switcher.dart

import 'package:flutter/material.dart';

import '../../../core/auth/auth_session.dart';
import 'add_institution_screen.dart';

class InstitutionSwitcher
    extends StatelessWidget {
  const InstitutionSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AuthSession.instance,
      builder: (context, _) {
        final session =
            AuthSession.instance;

        final active =
            session.activeInstitution;

        return InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              showDragHandle: true,
              builder: (sheetContext) {
                return SafeArea(
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min,
                    children: [
                      ...session.institutions.map(
                        (institution) =>
                            ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              institution
                                  .shortName[0],
                            ),
                          ),
                          title: Text(
                            institution.name,
                          ),
                          subtitle: Text(
                            institution.location,
                          ),
                          trailing:
                              institution.id ==
                                      active?.id
                                  ? const Icon(
                                      Icons
                                          .check_circle,
                                    )
                                  : null,
                          onTap: () {
                            session
                                .switchInstitution(
                              institution,
                            );

                            Navigator.pop(
                              sheetContext,
                            );
                          },
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        leading:
                            const Icon(Icons.add),
                        title: const Text(
                          'Add University',
                        ),
                        onTap: () {
                          Navigator.pop(
                            sheetContext,
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  const AddInstitutionScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: Text(
                  active?.shortName[0] ?? 'P',
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  active?.name ??
                      'Select University',
                  overflow:
                      TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
              ),
            ],
          ),
        );
      },
    );
  }
}