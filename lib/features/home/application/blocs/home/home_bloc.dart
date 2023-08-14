import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/notification_repository.dart';
import '../../providers/home_string_provider.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._notificationRepository,
    this._stringProvider,
  ) : super(const HomeState()) {
    on<_LoadNotificationsAmountEvent>(_loadNotificationsAmount);
    on<_SelectTabEvent>(_selectTab);
  }

  final NotificationRepository _notificationRepository;
  final HomeStringProvider _stringProvider;

  Future<void> _loadNotificationsAmount(
    _LoadNotificationsAmountEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final amount = await _notificationRepository.getUnreadAmount();

      emit(state.copyWith(notificationsAmount: amount.toString()));
    } catch (e) {
      emit(
        state.copyWith(error: _stringProvider.cannotLoadNotificationsAmount),
      );
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _selectTab(
    _SelectTabEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(selectedTabIndex: event.index));
  }
}
