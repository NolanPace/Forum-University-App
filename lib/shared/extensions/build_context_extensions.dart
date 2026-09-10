// FILE: lib/shared/extensions/build_context_extensions.dart

import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colors =>
      Theme.of(this).colorScheme;
}