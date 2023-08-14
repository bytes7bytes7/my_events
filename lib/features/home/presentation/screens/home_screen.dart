import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../application/blocs/home/home_bloc.dart';
import '../widgets/news_list.dart';
import '../widgets/upcoming_events_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldMsg = ScaffoldMessenger.of(context);

    return BlocProvider(
      create: (context) => GetIt.instance.get<HomeBloc>()
        ..add(const HomeEvent.loadNotificationsAmount()),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state.error.isNotEmpty) {
                scaffoldMsg.showSnackBar(
                  SnackBar(
                    content: Text(state.error),
                  ),
                );
              }
            },
            child: Column(
              children: const [
                _Actions(),
                _TabBar(),
                Expanded(
                  child: _Body(),
                ),
              ],
            ),
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
                  badgeStyle: badges.BadgeStyle(
                    padding: const EdgeInsets.all(8),
                    badgeColor: theme.colorScheme.primary,
                  ),
                  badgeContent: Text(
                    state.notificationsAmount,
                    style: theme.textTheme.labelMedium,
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
      margin: const EdgeInsets.all(2),
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
      margin: const EdgeInsets.all(2),
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

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (pageController.page != null) {
          if (state.selectedTabIndex != pageController.page?.toInt()) {
            pageController.animateToPage(
              state.selectedTabIndex,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
            );
          }
        }
      },
      builder: (context, state) {
        return PageView(
          controller: pageController,
          children: const [
            UpcomingEventsSlider(),
            NewsList(),
          ],
        );
      },
    );
  }
}
