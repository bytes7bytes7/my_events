import 'package:injectable/injectable.dart';

import '../../features/home/application/coordinators/news_list_coordinator.dart';

@LazySingleton(as: NewsListCoordinator)
class ProdNewsListCoordinator implements NewsListCoordinator {
  const ProdNewsListCoordinator();

  @override
  void onCardPressed({required String id}) {
    // TODO: implement onCardPressed
  }
}
