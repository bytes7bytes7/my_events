import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../../common/common.dart';
import '../../application/blocs/account/account_bloc.dart';
import '../widgets/log_out_button.dart';
import '../widgets/setting_button.dart';
import '../widgets/user_card.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          child: BlocProvider(
            create: (context) => GetIt.instance.get<AccountBloc>()
              ..add(const AccountEvent.loadUser()),
            child: const _Body(),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textThemeTX = theme.extension<TextThemeTX>()!;
    final scaffoldMsg = ScaffoldMessenger.of(context);
    final bloc = context.read<AccountBloc>();

    return BlocConsumer<AccountBloc, AccountState>(
      listener: (context, state) {
        if (state.error.isNotEmpty) {
          scaffoldMsg.showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingIndicator();
        }

        final user = state.user;
        if (user == null) {
          return const Center(
            child: Text('Нет данных'),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                'мой профиль',
                style: theme.textTheme.displayLarge,
              ),
            ),
            UserCard(
              user: user,
              onPressed: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Основное',
              style: textThemeTX.labelThin,
            ),
            const SizedBox(
              height: 4,
            ),
            SettingButton(
              title: 'Центр уведомлений',
              iconPath: Assets.icons.notifications.path,
              onPressed: () {},
            ),
            SettingButton(
              title: 'Мои мероприятия',
              iconPath: Assets.icons.myEvents.path,
              onPressed: () {
                bloc.add(const AccountEvent.openMyEvents());
              },
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
            const Spacer(),
            LogOutButton(
              onPressed: () {
                bloc.add(const AccountEvent.logOut());
              },
            ),
          ],
        );
      },
    );
  }
}
