part of 'my_events_bloc.dart';

@freezed
class MyEventsState with _$MyEventsState {
  const factory MyEventsState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default('') String error,
    @Default(0) int offset,
    @Default(0) int totalCount,
    @Default([]) List<TicketVM> tickets,
  }) = _MyEventsState;
}
