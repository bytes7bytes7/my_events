import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../application/blocs/home/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldMsg = ScaffoldMessenger.of(context);

    return BlocProvider(
      create: (context) => GetIt.instance.get<HomeBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<HomeBloc, HomeState>(
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
              return Column(
                children: const [
                  _Actions(),
                  _TabBar(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  const _Actions();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Row(
            children: [
              Assets.images.logo.image(
                fit: BoxFit.fill,
                width: 45,
                height: 45,
              ),
              const Spacer(),
              ElevatedButton(
                style: elevatedButtonTX.quaternary,
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Text('О фонде'),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              if (state.notificationsAmount.isNotEmpty)
                badges.Badge(
                  badgeContent: Text(
                    state.notificationsAmount,
                  ),
                  child: ElevatedButton(
                    style: elevatedButtonTX.quaternary,
                    onPressed: () {},
                    child: Assets.icons.notifications.svg(),
                  ),
                )
              else
                ElevatedButton(
                  style: elevatedButtonTX.quaternary,
                  onPressed: () {},
                  child: Assets.icons.notifications.svg(),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<HomeBloc>();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: theme.colorScheme.background,
            ),
            child: Row(
              children: [
                Expanded(
                  child: state.selectedTabIndex == 0
                      ? const _SelectedTab(
                          title: 'Мероприятие',
                        )
                      : _UnselectedTab(
                          title: 'Мероприятие',
                          onPressed: () {
                            bloc.add(const HomeEvent.selectTab(index: 0));
                          },
                        ),
                ),
                Expanded(
                  child: state.selectedTabIndex == 1
                      ? const _SelectedTab(
                          title: 'Новости',
                        )
                      : _UnselectedTab(
                          title: 'Новости',
                          onPressed: () {
                            bloc.add(const HomeEvent.selectTab(index: 1));
                          },
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SelectedTab extends StatelessWidget {
  const _SelectedTab({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}

class _UnselectedTab extends StatelessWidget {
  const _UnselectedTab({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Center(
            child: Text(
              title,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
      ),
    );
  }
}
