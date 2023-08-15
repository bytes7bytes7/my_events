import 'package:injectable/injectable.dart';

import '../../../features/common/application/coordinators/auth_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@LazySingleton(as: AuthCoordinator)
class ProdAuthCoordinator extends Coordinator implements AuthCoordinator {
  const ProdAuthCoordinator({required super.goRouter});

  @override
  void onLoggedIn() {
    const HomeRoute().go(goRouter);
  }

  @override
  void onLoggedOut() {
    const AuthRoute().go(goRouter);
  }
}
