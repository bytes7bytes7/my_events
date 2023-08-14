import 'package:injectable/injectable.dart';

import '../../application/providers/home_string_provider.dart';

@LazySingleton(as: HomeStringProvider)
class ProdHomeStringProvider implements HomeStringProvider {
  const ProdHomeStringProvider();

  @override
  String get cannotLoadNotificationsAmount =>
      'Не удалось загрузить количество непрочитанных уведомлений';
}
