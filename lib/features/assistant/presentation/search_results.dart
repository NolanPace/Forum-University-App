// FILE: lib/features/assistant/presentation/search_results.dart

import 'package:flutter/material.dart';
import '../../../shared/widgets/empty_state.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffold(
      title: 'Search Results',
      description:
          'Results from Portico search.',
      icon: Icons.search,
    );
  }
}