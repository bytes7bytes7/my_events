part of 'upcoming_events_bloc.dart';

@freezed
class UpcomingEventsState with _$UpcomingEventsState {
  const factory UpcomingEventsState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default(0) int currentIndex,
    @Default([]) List<EventVM> events,
  }) = _UpcomingEventsState;
}
