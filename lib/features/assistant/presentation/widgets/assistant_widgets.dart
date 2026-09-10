// FILE: lib/features/assistant/presentation/widgets/assistant_widgets.dart

import 'package:flutter/material.dart';

class AssistantSuggestion
    extends StatelessWidget {
  final String label;

  const AssistantSuggestion(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(label),
      onPressed: () {},
    );
  }
}