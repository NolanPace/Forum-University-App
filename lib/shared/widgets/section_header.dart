// FILE: lib/shared/widgets/section_header.dart
// Standard heading used above sections throughout Forum.

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.actionLabel,
    this.onAction,
  });

  final String title;
  final String? subtitle;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge,
              ),
              if (subtitle != null &&
                  subtitle!.isNotEmpty) ...<Widget>[
                const SizedBox(
                  height: 3,
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
        if (actionLabel != null &&
            onAction != null)
          TextButton(
            onPressed: onAction,
            child: Text(
              actionLabel!,
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }
}