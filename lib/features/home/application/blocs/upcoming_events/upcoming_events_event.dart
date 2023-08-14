part of 'upcoming_events_bloc.dart';

@freezed
class UpcomingEventsEvent with _$UpcomingEventsEvent {
  const factory UpcomingEventsEvent.load() = _LoadEvent;
}
