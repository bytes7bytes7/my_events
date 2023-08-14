import 'package:injectable/injectable.dart';

import '../../features/home/application/coordinators/onboarding_coordinator.dart';

@LazySingleton(as: OnboardingCoordinator)
class ProdOnboardingCoordinator implements OnboardingCoordinator {
  const ProdOnboardingCoordinator();

  @override
  void onClose() {
    // TODO: implement onClose
  }

  @override
  void onDone() {
    // TODO: implement onDone
  }
}
