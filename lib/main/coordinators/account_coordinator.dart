import 'package:injectable/injectable.dart';

import '../../features/account/application/coordinators/account_coordinator.dart';

@LazySingleton(as: AccountCoordinator)
class ProdAccountCoordinator implements AccountCoordinator {
  const ProdAccountCoordinator();

  @override
  void openMyEvents() {
    // TODO: implement openMyEvents
  }
}
