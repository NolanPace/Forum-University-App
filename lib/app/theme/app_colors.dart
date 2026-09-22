// FILE: lib/app/theme/app_colors.dart
// Central color palette for Forum.

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Brand
  static const Color primary = Color(0xFF5B4CF0);
  static const Color primaryDark = Color(0xFF4939DD);
  static const Color primaryLight = Color(0xFFEEEAFE);

  // Backgrounds
  static const Color background = Color(0xFFF7F7FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceSecondary = Color(0xFFF1F1F5);
  static const Color surfaceTertiary = Color(0xFFE8E8EF);

  // Text
  static const Color textPrimary = Color(0xFF17171C);
  static const Color textSecondary = Color(0xFF686872);
  static const Color textTertiary = Color(0xFF96969F);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Borders
  static const Color border = Color(0xFFE4E4EA);
  static const Color divider = Color(0xFFE9E9EE);

  // Semantic
  static const Color success = Color(0xFF258A57);
  static const Color successBackground = Color(0xFFE8F6EE);

  static const Color warning = Color(0xFFB36B16);
  static const Color warningBackground = Color(0xFFFFF3E3);

  static const Color error = Color(0xFFC63E45);
  static const Color errorBackground = Color(0xFFFCEBED);

  static const Color info = Color(0xFF3478D4);
  static const Color infoBackground = Color(0xFFEAF2FD);

  // Dark mode
  static const Color darkBackground = Color(0xFF101014);
  static const Color darkSurface = Color(0xFF19191F);
  static const Color darkSurfaceSecondary = Color(0xFF222229);

  static const Color darkTextPrimary = Color(0xFFF7F7FA);
  static const Color darkTextSecondary = Color(0xFFADADB7);
  static const Color darkBorder = Color(0xFF303038);
}