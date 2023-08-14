import 'package:injectable/injectable.dart';

import '../../features/common/application/application.dart';

@LazySingleton(as: AuthCoordinator)
class ProdAuthCoordinator implements AuthCoordinator {
  const ProdAuthCoordinator();

  @override
  void onLoggedIn() {
    // TODO: implement onLoggedIn
  }

  @override
  void onLoggedOut() {
    // TODO: implement onLoggedOut
  }
}
