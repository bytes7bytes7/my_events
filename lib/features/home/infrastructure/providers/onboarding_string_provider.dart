import 'package:injectable/injectable.dart';

import '../../application/providers/onboarding_string_provider.dart';

@LazySingleton(as: OnboardingStringProvider)
class ProdOnboardingStringProvider implements OnboardingStringProvider {
  const ProdOnboardingStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить информацию';
}
