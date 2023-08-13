import '../entities/news.dart';

abstract class NewsRepository {
  const NewsRepository();

  Future<List<String>> getCategories();

  Future<List<News>> get({
    required int offset,
    required int limit,
    String? onlyCategory,
  });
}
