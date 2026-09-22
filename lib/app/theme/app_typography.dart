// FILE: lib/app/theme/app_typography.dart
// Forum typography system.

import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  AppTypography._();

  static TextTheme lightTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        height: 1.10,
        letterSpacing: -1.0,
        color: AppColors.textPrimary,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.12,
        letterSpacing: -0.8,
        color: AppColors.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.15,
        letterSpacing: -0.6,
        color: AppColors.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.18,
        letterSpacing: -0.4,
        color: AppColors.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w600,
        height: 1.20,
        color: AppColors.textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        height: 1.25,
        color: AppColors.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.30,
        color: AppColors.textPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.30,
        color: AppColors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.45,
        color: AppColors.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.45,
        color: AppColors.textPrimary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.40,
        color: AppColors.textSecondary,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.20,
        color: AppColors.textPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.20,
        color: AppColors.textSecondary,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        height: 1.20,
        color: AppColors.textTertiary,
      ),
    );
  }

  static TextTheme darkTextTheme() {
    return lightTextTheme().apply(
      bodyColor: AppColors.darkTextPrimary,
      displayColor: AppColors.darkTextPrimary,
    );
  }
}