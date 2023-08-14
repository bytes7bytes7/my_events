part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.checkIfIsLoggedIn() = _CheckIfIsLoggedInEvent;

  const factory AuthEvent.logInToAccount() = _LogInToAccountEvent;

  const factory AuthEvent.logInAnonymously() = _LogInAnonymouslyEvent;
}

class _LoggedInEvent extends AuthEvent {
  const _LoggedInEvent() : super._();
}

class _LoggedOutEvent extends AuthEvent {
  const _LoggedOutEvent() : super._();
}
