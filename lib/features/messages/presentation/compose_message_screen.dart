// FILE: lib/features/messages/presentation/compose_message_screen.dart

import 'package:flutter/material.dart';

class ComposeMessageScreen
    extends StatelessWidget {
  const ComposeMessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('New Message')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(
            decoration:
                InputDecoration(labelText: 'Recipient'),
          ),
          const SizedBox(height: 12),
          const TextField(
            maxLines: 7,
            decoration:
                InputDecoration(labelText: 'Message'),
          ),
          const SizedBox(height: 18),
          FilledButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ],
      ),
    );
  }
}