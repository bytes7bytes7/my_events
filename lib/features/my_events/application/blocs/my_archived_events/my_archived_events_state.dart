part of 'my_archived_events_bloc.dart';

@freezed
class MyArchivedEventsState with _$MyArchivedEventsState {
  const factory MyArchivedEventsState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default('') String error,
    @Default(0) int offset,
    @Default(0) int totalCount,
    @Default([]) List<TicketVM> tickets,
  }) = _MyArchivedEventsState;
}
