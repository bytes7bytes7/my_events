part of 'my_events_bloc.dart';

@freezed
class MyEventsEvent with _$MyEventsEvent {
  const factory MyEventsEvent.load() = _LoadEvent;

  const factory MyEventsEvent.loadMore() = _LoadMoreEvent;

  const factory MyEventsEvent.refresh() = _RefreshEvent;

  const factory MyEventsEvent.back() = _BackEvent;

  const factory MyEventsEvent.openArchive() = _OpenArchiveEvent;
}
