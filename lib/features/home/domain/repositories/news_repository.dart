import '../../../../utils/paginated.dart';
import '../entities/news.dart';
import '../entities/news_category.dart';

abstract class NewsRepository {
  const NewsRepository();

  Future<List<NewsCategory>> getCategories();

  Future<Paginated<List<News>>> get({
    required String categoryID,
    required int offset,
    required int limit,
  });

  Future<News> getByID(String id);
}
