// FILE: lib/shared/widgets/forum_card.dart
// Standard surface/card component used throughout Forum.

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_shapes.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(16),
    this.margin,
  });

  final Widget child;
  final VoidCallback? onTap;

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final Widget content = Container(
      padding: padding,
      margin: margin,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppShapes.card,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
            width: 1,
          ),
        ),
      ),
      child: child,
    );

    if (onTap == null) {
      return content;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: AppShapes.card,
        onTap: onTap,
        child: content,
      ),
    );
  }
}