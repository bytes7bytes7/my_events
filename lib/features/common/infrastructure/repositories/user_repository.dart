import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../gen/assets.gen.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class TestUserRepository implements UserRepository {
  const TestUserRepository();

  @override
  Future<User> getCurrent() {
    return Future.delayed(const Duration(milliseconds: 800), () async {
      return User(
        id: '1241',
        firstName: 'Андрей',
        lastName: 'Бушев',
        avatar: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.images.account.path),
        ),
      );
    });
  }
}
