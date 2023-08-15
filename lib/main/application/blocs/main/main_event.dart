part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.setTab({required int index}) = _SetTabEvent;
}
