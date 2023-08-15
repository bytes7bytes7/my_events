import 'package:injectable/injectable.dart';

import '../../application/application.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: MainCoordinator)
class ProdMainCoordinator extends Coordinator implements MainCoordinator {
  ProdMainCoordinator({required super.goRouter});

  @override
  void onTabSet({required int index}) {
    switch (index) {
      case 0:
        return const HomeRoute().go(goRouter);
      case 1:
        return const EventsRoute().go(goRouter);
      case 2:
        return const ChatRoute().go(goRouter);
      case 3:
        return const AccountRoute().go(goRouter);
    }
  }
}
