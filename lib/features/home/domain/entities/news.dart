import 'dart:typed_data';

class News {
  const News({
    required this.id,
    required this.title,
    required this.publishedAt,
    required this.readTime,
    required this.image,
    required this.content,
  });

  final String id;
  final String title;
  final DateTime publishedAt;
  final Duration readTime;
  final Uint8List image;
  final String content;
}
