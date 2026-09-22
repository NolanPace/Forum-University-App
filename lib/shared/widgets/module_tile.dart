// FILE: lib/shared/widgets/module_tile.dart
// Standard Forum module shortcut.

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_icons.dart';
import '../../app/theme/app_shapes.dart';
import 'forum_card.dart';

class ModuleTile extends StatelessWidget {
  const ModuleTile({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ForumCard(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 14,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: AppShapes.medium,
            ),
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 21,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  maxLines: 1,
                  overflow:
                      TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall,
                ),
                if (subtitle != null &&
                    subtitle!.isNotEmpty) ...<Widget>[
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    subtitle!,
                    maxLines: 1,
                    overflow:
                        TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            ForumIcons.chevronRight,
            size: 18,
            color: AppColors.textTertiary,
          ),
        ],
      ),
    );
  }
}