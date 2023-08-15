import 'package:injectable/injectable.dart';

import '../../../features/home/application/coordinators/news_list_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: NewsListCoordinator)
class ProdNewsListCoordinator extends Coordinator
    implements NewsListCoordinator {
  const ProdNewsListCoordinator({required super.goRouter});

  @override
  void onCardPressed({required String id}) {
    NewsRoute(id: id).push(goRouter);
  }
}
