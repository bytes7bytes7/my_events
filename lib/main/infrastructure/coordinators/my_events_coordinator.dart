import 'package:injectable/injectable.dart';

import '../../../features/my_events/application/coordinators/my_events_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: MyEventsCoordinator)
class ProdMyEventsCoordinator extends Coordinator
    implements MyEventsCoordinator {
  ProdMyEventsCoordinator({required super.goRouter});

  @override
  void back() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const AccountRoute().go(goRouter);
    }
  }

  @override
  void openArchive() {
    const MyArchivedEventsRoute().push(goRouter);
  }
}
