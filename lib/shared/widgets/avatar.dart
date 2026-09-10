// FILE: lib/shared/widgets/avatar.dart

import 'package:flutter/material.dart';

class PorticoAvatar extends StatelessWidget {
  final String name;

  const PorticoAvatar(
    this.name, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text(
        name.trim().isEmpty
            ? '?'
            : name.trim()[0].toUpperCase(),
      ),
    );
  }
}