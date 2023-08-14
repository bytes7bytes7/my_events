import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/value_objects/value_objects.dart';
import '../view_models/onboarding_tip_vm.dart';

@LazySingleton(as: Mapper<OnboardingTip, OnboardingTipVM>)
class OnboardingTipToOnboardingTipVMMapper
    extends Mapper<OnboardingTip, OnboardingTipVM> {
  const OnboardingTipToOnboardingTipVMMapper();

  @override
  OnboardingTipVM map(OnboardingTip item) {
    return OnboardingTipVM(
      title: item.title,
      description: item.description,
      image: item.image,
    );
  }
}
