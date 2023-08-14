part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(false) isLoading,
    @Default('') String error,
    @Default(0) int currentIndex,
    @Default([]) List<OnboardingTipVM> tips,
  }) = _OnboardingState;

  const OnboardingState._();

  bool get isLastIndex {
    return currentIndex == tips.length - 1;
  }
}
