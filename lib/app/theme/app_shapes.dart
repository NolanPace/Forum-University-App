// FILE: lib/app/theme/app_shapes.dart
// Forum shape and radius constants.

import 'package:flutter/material.dart';

class AppShapes {
  AppShapes._();

  static const double radiusSmall = 10.0;
  static const double radiusMedium = 14.0;
  static const double radiusCard = 18.0;
  static const double radiusLarge = 24.0;
  static const double radiusPill = 999.0;

  static const BorderRadius small = BorderRadius.all(
    Radius.circular(radiusSmall),
  );

  static const BorderRadius medium = BorderRadius.all(
    Radius.circular(radiusMedium),
  );

  static const BorderRadius card = BorderRadius.all(
    Radius.circular(radiusCard),
  );

  static const BorderRadius large = BorderRadius.all(
    Radius.circular(radiusLarge),
  );

  static const BorderRadius pill = BorderRadius.all(
    Radius.circular(radiusPill),
  );
}