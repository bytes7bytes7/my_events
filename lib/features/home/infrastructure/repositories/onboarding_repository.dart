import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../gen/assets.gen.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../../domain/value_objects/onboarding_tip.dart';

@LazySingleton(as: OnboardingRepository)
class ProdOnboardingRepository implements OnboardingRepository {
  const ProdOnboardingRepository();

  @override
  Future<List<OnboardingTip>> getTips() {
    return Future.delayed(const Duration(milliseconds: 800), () async {
      return [
        OnboardingTip(
          title: 'Уникальные сервисы',
          description:
              'Воспользуйтесь удобством специальных сервисов для участников мероприятий',
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.onboarding1.path),
          ),
        ),
        OnboardingTip(
          title: 'Центр уведомлений',
          description:
              'Сразу после наступления события, мы уведомим вас сообщением на мобильном устройстве ',
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.onboarding2.path),
          ),
        ),
        OnboardingTip(
          title: 'Программа мероприятий',
          description:
              'Всегда под рукой актуальная информация о программе мероприятия',
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.onboarding3.path),
          ),
        ),
      ];
    });
  }
}
