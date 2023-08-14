import 'package:injectable/injectable.dart';

import '../../application/application.dart';

@LazySingleton(as: NewsListStringProvider)
class ProdNewsListStringProvider implements NewsListStringProvider {
  const ProdNewsListStringProvider();

  @override
  String get cannotLoadCategories => 'Не удалось загрузить категории';

  @override
  String get cannotLoadNews => 'Не удалось загрузить новости';
}
