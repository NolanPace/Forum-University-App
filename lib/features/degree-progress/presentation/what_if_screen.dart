// FILE: lib/features/degree_progress/presentation/what_if_screen.dart

import 'package:flutter/material.dart';

class WhatIfScreen extends StatelessWidget {
  const WhatIfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('What If?')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Explore another major or minor without changing your official record.',
          ),
          SizedBox(height: 18),
          DropdownMenu<String>(
            label:
                Text('Program or minor'),
            dropdownMenuEntries: [
              DropdownMenuEntry(
                value: 'math',
                label: 'Mathematics Minor',
              ),
              DropdownMenuEntry(
                value: 'econ',
                label: 'Economics Minor',
              ),
            ],
          ),
        ],
      ),
    );
  }
}