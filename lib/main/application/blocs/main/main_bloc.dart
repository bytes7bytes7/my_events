import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../coordinators/main_coordinator.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    this._coordinator,
  ) : super(const MainState()) {
    on<_SetTabEvent>(_setTab);
  }

  final MainCoordinator _coordinator;

  void _setTab(
    _SetTabEvent event,
    Emitter<MainState> emit,
  ) {
    if (event.index == state.currentIndex) {
      return;
    }

    _coordinator.onTabSet(index: event.index);

    emit(state.copyWith(currentIndex: event.index));
  }
}
