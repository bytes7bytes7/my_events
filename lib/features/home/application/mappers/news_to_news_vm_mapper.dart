import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../../common/application/providers/date_time_beautify_provider.dart';
import '../../../common/application/providers/duration_beautify_provider.dart';
import '../../domain/entities/news.dart';
import '../view_models/news_vm.dart';

@LazySingleton(as: Mapper<News, NewsVM>)
class NewsToNewsVMMapper extends Mapper<News, NewsVM> {
  const NewsToNewsVMMapper(
    this._dateTimeBeautifyProvider,
    this._durationBeautifyProvider,
  );

  final DateTimeBeautifyProvider _dateTimeBeautifyProvider;
  final DurationBeautifyProvider _durationBeautifyProvider;

  @override
  NewsVM map(News item) {
    return NewsVM(
      id: item.id,
      title: item.title,
      publishedAt: _dateTimeBeautifyProvider.long(item.publishedAt),
      readTime: _durationBeautifyProvider.long(item.readTime),
      image: item.image,
      content: item.content,
    );
  }
}
