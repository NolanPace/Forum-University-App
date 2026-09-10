// FILE: lib/features/search/domain/search_result.dart

class SearchResult {
  final String title;
  final String subtitle;
  final String route;

  const SearchResult({
    required this.title,
    required this.subtitle,
    required this.route,
  });
}