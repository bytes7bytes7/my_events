import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../widgets/setting_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Text(
                'Профиль',
                style: theme.textTheme.displayLarge,
              ),
              SettingButton(
                title: 'Центр уведомлений',
                iconPath: Assets.icons.notifications.path,
                onPressed: () {},
              ),
              SettingButton(
                title: 'Мои мероприятия',
                iconPath: Assets.icons.myEvents.path,
                onPressed: () {},
              ),
              SettingButton(
                title: 'Сервисы',
                iconPath: Assets.icons.services.path,
                onPressed: () {},
              ),
              SettingButton(
                title: 'Статус бейдж и ТС',
                iconPath: Assets.icons.status.path,
                onPressed: () {},
              ),
              SettingButton(
                title: 'Настройки аккаунта',
                iconPath: Assets.icons.settings.path,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
