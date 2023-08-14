part of 'upcoming_events_bloc.dart';

@freezed
class UpcomingEventsEvent with _$UpcomingEventsEvent {
  const factory UpcomingEventsEvent.load() = _LoadEvent;

  const factory UpcomingEventsEvent.pageChanged({required int index}) =
      _PageChangedEvent;
}
