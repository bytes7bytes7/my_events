part of 'my_archived_events_bloc.dart';

@freezed
class MyArchivedEventsEvent with _$MyArchivedEventsEvent {
  const factory MyArchivedEventsEvent.load() = _LoadEvent;

  const factory MyArchivedEventsEvent.loadMore() = _LoadMoreEvent;

  const factory MyArchivedEventsEvent.refresh() = _RefreshEvent;
}
