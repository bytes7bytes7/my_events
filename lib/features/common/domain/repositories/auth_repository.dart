abstract class AuthRepository {
  const AuthRepository();

  Future<bool> isLoggedIn();

  Future<void> logInToAccount();

  Future<void> logInAnonymously();

  Future<void> logOut();
}
