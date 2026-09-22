// FILE: lib/shared/widgets/dashboard_card.dart
// Standard dashboard card used on Forum home screens.

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_shapes.dart';
import 'forum_card.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.trailing,
    this.child,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData? icon;
  final Widget? trailing;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ForumCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (icon != null) ...<Widget>[
                Container(
                  width: 38,
                  height: 38,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius:
                        AppShapes.medium,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    size: 20,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    if (subtitle != null &&
                        subtitle!.isNotEmpty) ...<Widget>[
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        subtitle!,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall,
                      ),
                    ],
                  ],
                ),
              ),
              if (trailing != null)
                trailing!,
            ],
          ),
          if (child != null) ...<Widget>[
            const SizedBox(
              height: 16,
            ),
            child!,
          ],
        ],
      ),
    );
  }
}