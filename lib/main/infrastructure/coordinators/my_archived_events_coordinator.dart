import 'package:injectable/injectable.dart';

import '../../../features/my_events/application/coordinators/my_archived_events_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: MyArchivedEventsCoordinator)
class ProdMyArchivedEventsCoordinator extends Coordinator
    implements MyArchivedEventsCoordinator {
  const ProdMyArchivedEventsCoordinator({required super.goRouter});

  @override
  void back() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const MyEventsRoute().go(goRouter);
    }
  }
}
