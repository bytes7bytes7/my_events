import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/auth_repository.dart';

const _isLoggedInKey = 'is_logged_in';
const _delay = Duration(milliseconds: 800);

@LazySingleton(as: AuthRepository)
class TestAuthRepository implements AuthRepository {
  const TestAuthRepository(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  Future<bool> isLoggedIn() async {
    return _sharedPreferences.getBool(_isLoggedInKey) ?? false;
  }

  @override
  Future<void> logInAnonymously() async {
    await _sharedPreferences.setBool(_isLoggedInKey, true);

    return Future.delayed(_delay);
  }

  @override
  Future<void> logInToAccount() async {
    await _sharedPreferences.setBool(_isLoggedInKey, true);

    return Future.delayed(_delay);
  }

  @override
  Future<void> logOut() async {
    await _sharedPreferences.setBool(_isLoggedInKey, false);

    return Future.delayed(_delay);
  }
}
