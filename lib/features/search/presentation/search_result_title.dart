// FILE: lib/features/search/presentation/search_result_tile.dart

import 'package:flutter/material.dart';

class SearchResultTile
    extends StatelessWidget {
  final String title;
  final String subtitle;

  const SearchResultTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing:
          const Icon(Icons.chevron_right),
    );
  }
}