// FILE: lib/features/assistant/presentation/assistant_screen.dart

import 'package:flutter/material.dart';

class AssistantScreen
    extends StatefulWidget {
  const AssistantScreen({
    super.key,
  });

  @override
  State<AssistantScreen> createState() =>
      _AssistantScreenState();
}

class _AssistantScreenState
    extends State<AssistantScreen> {
  final controller =
      TextEditingController();

  final messages = <String>[
    'Hi — ask me anything about your university.',
  ];

  void send() {
    final text =
        controller.text.trim();

    if (text.isEmpty) {
      return;
    }

    setState(() {
      messages.add(text);

      messages.add(
        'Demo response. Production Portico will use institution-approved data and permissioned actions.',
      );

      controller.clear();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Portico AI')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.all(14),
                    child:
                        Text(messages[index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration:
                        const InputDecoration(
                      hintText:
                          'Ask Portico...',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton.filled(
                  onPressed: send,
                  icon: const Icon(
                    Icons.arrow_upward,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}