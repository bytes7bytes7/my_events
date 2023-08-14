import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/mapper.dart';
import '../../../../common/domain/entities/event.dart';
import '../../../../common/domain/repositories/event_repository.dart';
import '../../providers/upcoming_events_string_provider.dart';
import '../../view_models/event_vm.dart';

part 'upcoming_events_event.dart';

part 'upcoming_events_state.dart';

part 'upcoming_events_bloc.freezed.dart';

@injectable
class UpcomingEventsBloc
    extends Bloc<UpcomingEventsEvent, UpcomingEventsState> {
  UpcomingEventsBloc(
    this._eventRepository,
    this._eventMapper,
    this._stringProvider,
  ) : super(const UpcomingEventsState()) {
    on<_LoadEvent>(_load);
    on<_PageChangedEvent>(_pageChanged);
  }

  final EventRepository _eventRepository;
  final Mapper<Event, EventVM> _eventMapper;
  final UpcomingEventsStringProvider _stringProvider;

  Future<void> _load(
    _LoadEvent event,
    Emitter<UpcomingEventsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final result = await _eventRepository.getUpcomingEvents();

      final events = _eventMapper.mapList(result);

      emit(state.copyWith(events: events));
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _pageChanged(
    _PageChangedEvent event,
    Emitter<UpcomingEventsState> emit,
  ) {
    emit(state.copyWith(currentIndex: event.index));
  }
}
