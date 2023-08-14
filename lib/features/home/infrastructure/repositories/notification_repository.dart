import 'package:injectable/injectable.dart';

import '../../domain/repositories/notification_repository.dart';

@LazySingleton(as: NotificationRepository)
class ProdNotificationRepository implements NotificationRepository {
  const ProdNotificationRepository();

  @override
  Future<int> getUnreadAmount() {
    return Future.delayed(const Duration(milliseconds: 800), () {
      return 1;
    });
  }
}
