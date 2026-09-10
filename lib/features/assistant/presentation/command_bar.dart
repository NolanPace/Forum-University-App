// FILE: lib/features/assistant/presentation/command_bar.dart

import 'package:flutter/material.dart';
import 'assistant_screen.dart';

class CommandBar extends StatelessWidget {
  const CommandBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                const AssistantScreen(),
          ),
        );
      },
      child: Container(
        padding:
            const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: const Row(
          children: [
            Icon(Icons.auto_awesome),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                'Ask or search Portico...',
              ),
            ),
            Icon(Icons.arrow_upward),
          ],
        ),
      ),
    );
  }
}