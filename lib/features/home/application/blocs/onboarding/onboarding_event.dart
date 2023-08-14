part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.load() = _LoadEvent;

  const factory OnboardingEvent.next() = _NextEvent;

  const factory OnboardingEvent.close() = _CloseEvent;
}
