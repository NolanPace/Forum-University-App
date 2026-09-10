// FILE: lib/features/news/domain/news_article.dart

class NewsArticle {
  final String id;
  final String title;
  final String summary;

  const NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
  });
}