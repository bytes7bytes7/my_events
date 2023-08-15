import 'package:injectable/injectable.dart';

import '../../features/home/application/coordinators/onboarding_coordinator.dart';
import '../infrastructure/infrastructure.dart';
import 'coordinator.dart';

@LazySingleton(as: OnboardingCoordinator)
class ProdOnboardingCoordinator extends Coordinator
    implements OnboardingCoordinator {
  const ProdOnboardingCoordinator({required super.goRouter});

  @override
  void onClose() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const HomeRoute().go(goRouter);
    }
  }

  @override
  void onDone() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const HomeRoute().go(goRouter);
    }
  }
}
