import 'dart:typed_data';

class NewsVM {
  const NewsVM({
    required this.id,
    required this.title,
    required this.publishedAt,
    required this.readTime,
    required this.image,
    required this.content,
  });

  final String id;
  final String title;
  final String publishedAt;
  final String readTime;
  final Uint8List image;
  final String content;
}
