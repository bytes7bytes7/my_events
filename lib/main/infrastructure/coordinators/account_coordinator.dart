import 'package:injectable/injectable.dart';

import '../../../features/account/application/coordinators/account_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: AccountCoordinator)
class ProdAccountCoordinator extends Coordinator implements AccountCoordinator {
  const ProdAccountCoordinator({required super.goRouter});

  @override
  void openMyEvents() {
    const MyEventsRoute().push(goRouter);
  }
}
