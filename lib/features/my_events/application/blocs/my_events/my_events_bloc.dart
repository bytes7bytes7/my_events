import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/mapper.dart';
import '../../../../common/application/view_models/ticket_vm.dart';
import '../../../../common/domain/entities/event.dart';
import '../../../../common/domain/entities/ticket.dart';
import '../../../../common/domain/repositories/event_repository.dart';
import '../../../../common/domain/repositories/ticket_repository.dart';
import '../../../../home/application/view_models/event_vm.dart';
import '../../coordinators/my_events_coordinator.dart';
import '../../providers/my_events_string_provider.dart';

part 'my_events_event.dart';

part 'my_events_state.dart';

part 'my_events_bloc.freezed.dart';

const _limit = 10;

@injectable
class MyEventsBloc extends Bloc<MyEventsEvent, MyEventsState> {
  MyEventsBloc(
    this._ticketRepository,
    this._eventRepository,
    this._stringProvider,
    this._coordinator,
    this._eventMapper,
  ) : super(const MyEventsState()) {
    on<_LoadEvent>(_load);
    on<_LoadMoreEvent>(_loadMore);
    on<_RefreshEvent>(_refresh);
    on<_BackEvent>(_back);
    on<_OpenArchiveEvent>(_openArchive);
  }

  final TicketRepository _ticketRepository;
  final EventRepository _eventRepository;
  final MyEventsStringProvider _stringProvider;
  final MyEventsCoordinator _coordinator;
  final Mapper<Event, EventVM> _eventMapper;

  Future<void> _load(
    _LoadEvent event,
    Emitter<MyEventsState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }

    if (state.isLoadingMore) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      final tickets = await _ticketRepository.getMy(
        offset: 0,
        limit: _limit,
      );

      final ticketsVM = await _ticketToTicketVM(tickets.value);

      emit(
        state.copyWith(
          offset: tickets.offset + tickets.count,
          totalCount: tickets.totalCount,
          tickets: ticketsVM,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _loadMore(
    _LoadMoreEvent event,
    Emitter<MyEventsState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }

    if (state.isLoadingMore) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true));

    try {
      final oldTickets = List.of(state.tickets);

      final tickets = await _ticketRepository.getMy(
        offset: state.offset,
        limit: _limit,
      );

      final ticketsVM = await _ticketToTicketVM(tickets.value);

      emit(
        state.copyWith(
          offset: tickets.count + tickets.offset,
          totalCount: tickets.totalCount,
          tickets: oldTickets..addAll(ticketsVM),
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoadingMore: false));
    }
  }

  Future<void> _refresh(
    _RefreshEvent event,
    Emitter<MyEventsState> emit,
  ) async {
    add(const MyEventsEvent.load());
  }

  Future<List<TicketVM>> _ticketToTicketVM(List<Ticket> tickets) async {
    final ticketsVM = <TicketVM>[];
    for (final e in tickets) {
      final event = await _eventRepository.getByID(e.eventID);

      ticketsVM.add(
        TicketVM(
          id: e.id,
          role: e.role,
          event: _eventMapper.map(event),
        ),
      );
    }

    return ticketsVM;
  }

  void _back(
    _BackEvent event,
    Emitter<MyEventsState> emit,
  ) {
    _coordinator.back();
  }

  void _openArchive(
    _OpenArchiveEvent event,
    Emitter<MyEventsState> emit,
  ) {
    _coordinator.openArchive();
  }
}
