import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/mapper.dart';
import '../../../domain/repositories/onboarding_repository.dart';
import '../../../domain/value_objects/onboarding_tip.dart';
import '../../providers/onboarding_string_provider.dart';
import '../../view_models/onboarding_tip_vm.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(
    this._onboardingRepository,
    this._onboardingTipMapper,
    this._onboardingStringProvider,
  ) : super(const OnboardingState()) {
    on<_LoadEvent>(_load);
    on<_NextEvent>(_next);
    on<_CloseEvent>(_close);
  }

  final OnboardingRepository _onboardingRepository;
  final Mapper<OnboardingTip, OnboardingTipVM> _onboardingTipMapper;
  final OnboardingStringProvider _onboardingStringProvider;

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
      emit(state.copyWith(error: _onboardingStringProvider.canNotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _next(
    _NextEvent event,
    Emitter<OnboardingState> emit,
  ) async {

  }

  Future<void> _close(
    _CloseEvent event,
    Emitter<OnboardingState> emit,
  ) async {}
}
