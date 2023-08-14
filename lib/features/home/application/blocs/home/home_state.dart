part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default(0) int notificationsAmount,
  }) = _HomeState;
}
