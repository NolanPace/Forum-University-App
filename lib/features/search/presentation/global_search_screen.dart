// FILE: lib/features/search/presentation/global_search_screen.dart

import 'package:flutter/material.dart';

class GlobalSearchScreen
    extends StatelessWidget {
  const GlobalSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Search Portico')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText:
                'Courses, services, people, clubs...',
          ),
        ),
      ),
    );
  }
}