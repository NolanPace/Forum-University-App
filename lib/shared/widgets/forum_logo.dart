// FILE: lib/shared/widgets/portico_logo.dart

import 'package:flutter/material.dart';

class ForumLogo extends StatelessWidget {
  final double size;
  final bool showWordmark;

  const ForumLogo({
    super.key,
    this.size = 58,
    this.showWordmark = true,
  });

  @override
  Widget build(BuildContext context) {
    final mark = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color:
            Theme.of(context).colorScheme.primary,
        borderRadius:
            BorderRadius.circular(size * .28),
      ),
      child: Icon(
        Icons.account_balance_rounded,
        color: Colors.white,
        size: size * .54,
      ),
    );

    if (!showWordmark) {
      return mark;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        mark,
        const SizedBox(width: 12),
        const Text(
          'Forum',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}