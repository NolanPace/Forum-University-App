// FILE: lib/features/messages/presentation/conversation_screen.dart

import 'package:flutter/material.dart';

class ConversationScreen
    extends StatelessWidget {
  const ConversationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Conversation')),
      body: Column(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment:
                    Alignment.topLeft,
                child: Card(
                  child: Padding(
                    padding:
                        EdgeInsets.all(14),
                    child: Text(
                      'Can you clarify Homework 4?',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14),
            child: TextField(
              decoration: InputDecoration(
                hintText:
                    'Write a message...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}