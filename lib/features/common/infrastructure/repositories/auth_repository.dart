import 'package:injectable/injectable.dart';

import '../../domain/repositories/auth_repository.dart';

const _delay = Duration(milliseconds: 800);

@LazySingleton(as: AuthRepository)
class TestAuthRepository implements AuthRepository {
  TestAuthRepository();

  var _isLoggedIn = false;

  @override
  Future<bool> isLoggedIn() {
    return Future.delayed(_delay, () => _isLoggedIn);
  }

  @override
  Future<void> logInAnonymously() async {
    _isLoggedIn = true;

    return Future.delayed(_delay);
  }

  @override
  Future<void> logInToAccount() async {
    _isLoggedIn = true;

    return Future.delayed(_delay);
  }

  @override
  Future<void> logOut() async {
    _isLoggedIn = false;

    return Future.delayed(_delay);
  }
}
