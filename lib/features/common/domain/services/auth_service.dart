import 'dart:async';

import '../events/domain_event.dart';
import '../events/user_logged_in_domain_event.dart';
import '../events/user_logged_out_domain_event.dart';
import '../repositories/auth_repository.dart';

class AuthService {
  AuthService(this._authRepository);

  final AuthRepository _authRepository;

  final _eventController = StreamController<DomainEvent>.broadcast();

  Stream<DomainEvent> get events => _eventController.stream;

  Future<void> dispose() async {
    await _eventController.close();
  }

  Future<void> logInToAccount() async {
    await _authRepository.logInToAccount();

    _eventController.add(const UserLoggedInDomainEvent());
  }

  Future<void> logInAnonymously() async {
    await _authRepository.logInAnonymously();

    _eventController.add(const UserLoggedInDomainEvent());
  }

  Future<void> logOut() async {
    await _authRepository.logOut();

    _eventController.add(const UserLoggedOutDomainEvent());
  }
}
