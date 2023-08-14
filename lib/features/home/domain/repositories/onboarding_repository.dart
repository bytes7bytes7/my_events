import '../value_objects/onboarding_tip.dart';

abstract class OnboardingRepository {
  const OnboardingRepository();

  Future<List<OnboardingTip>> getTips();
}
