import '../entities/user.dart';

abstract class UserRepository {
  const UserRepository();

  Future<User> getCurrent();
}
