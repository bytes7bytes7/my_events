part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.loadUser() = _LoadUserEvent;

  const factory AccountEvent.openMyEvents() = _OpenMyEventsEvent;

  const factory AccountEvent.logOut() = _LogOutEvent;
}
