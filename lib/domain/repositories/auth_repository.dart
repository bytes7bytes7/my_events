abstract class AuthRepository {
  const AuthRepository();

  Future<void> logInToAccount();

  Future<void> logInAnonymously();

  Future<void> logOut();
}
