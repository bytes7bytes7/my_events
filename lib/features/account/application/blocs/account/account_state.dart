part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    @Default('') String error,
    UserVM? user,
}) = _AccountState;
}
