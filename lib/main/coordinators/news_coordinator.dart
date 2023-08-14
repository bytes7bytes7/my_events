import 'package:injectable/injectable.dart';

import '../../features/home/application/application.dart';

@LazySingleton(as: NewsCoordinator)
class ProdNewsCoordinator implements NewsCoordinator {
  const ProdNewsCoordinator();

  @override
  void onClose() {
    // TODO: implement onClose
  }
}
