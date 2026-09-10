// FILE: lib/features/documents/domain/portico_document.dart

class ForumDocument {
  final String id;
  final String name;
  final String type;

  const ForumDocument({
    required this.id,
    required this.name,
    this.type = 'PDF',
  });
}