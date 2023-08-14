import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/mapper.dart';
import '../../../../common/application/view_models/ticket_vm.dart';
import '../../../../common/domain/entities/ticket.dart';
import '../../../../common/domain/repositories/ticket_repository.dart';
import '../../providers/my_events_string_provider.dart';

part 'my_events_event.dart';

part 'my_events_state.dart';

part 'my_events_bloc.freezed.dart';

const _limit = 10;

class MyEventsBloc extends Bloc<MyEventsEvent, MyEventsState> {
  MyEventsBloc(
    this._ticketRepository,
    this._stringProvider,
    this._ticketMapper,
  ) : super(const MyEventsState()) {
    on<_LoadEvent>(_load);
    on<_LoadMoreEvent>(_loadMore);
    on<_RefreshEvent>(_refresh);
  }

  final TicketRepository _ticketRepository;
  final MyEventsStringProvider _stringProvider;
  final Mapper<Ticket, TicketVM> _ticketMapper;

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

      final ticketsVM = _ticketMapper.mapList(tickets.value);

      emit(
        state.copyWith(
          offset: tickets.offset,
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

      final ticketsVM = _ticketMapper.mapList(tickets.value);

      emit(
        state.copyWith(
          offset: tickets.offset,
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
}
