part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadNotificationsAmount() =
      _LoadNotificationsAmountEvent;

  const factory HomeEvent.selectTab({required int index}) = _SelectTabEvent;
}
