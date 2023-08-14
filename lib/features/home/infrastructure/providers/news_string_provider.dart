import 'package:injectable/injectable.dart';

import '../../application/providers/news_string_provider.dart';

@LazySingleton(as: NewsStringProvider)
class ProdNewsStringProvider implements NewsStringProvider {
  const ProdNewsStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить новость';
}
