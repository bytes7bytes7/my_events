import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/mapper.dart';
import '../../../domain/repositories/onboarding_repository.dart';
import '../../../domain/value_objects/onboarding_tip.dart';
import '../../coordinators/onboarding_coordinator.dart';
import '../../providers/onboarding_string_provider.dart';
import '../../view_models/onboarding_tip_vm.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(
    this._onboardingRepository,
    this._onboardingTipMapper,
    this._stringProvider,
    this._coordinator,
  ) : super(const OnboardingState()) {
    on<_LoadEvent>(_load);
    on<_NextEvent>(_next);
    on<_CloseEvent>(_close);
  }

  final OnboardingRepository _onboardingRepository;
  final Mapper<OnboardingTip, OnboardingTipVM> _onboardingTipMapper;
  final OnboardingStringProvider _stringProvider;
  final OnboardingCoordinator _coordinator;

  Future<void> _load(
    _LoadEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final result = await _onboardingRepository.getTips();

      final tips = _onboardingTipMapper.mapList(result);

      emit(
        state.copyWith(
          tips: tips,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _next(
    _NextEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    if (state.isLastIndex) {
      return _coordinator.onDone();
    }

    emit(state.copyWith(currentIndex: state.currentIndex + 1));
  }

  Future<void> _close(
    _CloseEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    _coordinator.onClose();
  }
}
