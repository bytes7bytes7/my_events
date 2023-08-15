import 'package:injectable/injectable.dart';

import '../../../features/home/application/coordinators/news_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: NewsCoordinator)
class ProdNewsCoordinator extends Coordinator implements NewsCoordinator {
  const ProdNewsCoordinator({required super.goRouter});

  @override
  void onClose() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const HomeRoute().go(goRouter);
    }
  }
}
