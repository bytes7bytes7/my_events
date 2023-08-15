import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../../../gen/assets.gen.dart';
import '../../application/blocs/main/main_bloc.dart';

const _iconSize = 24.0;

final _tabIcons = [
  Assets.icons.home.path,
  Assets.icons.events.path,
  Assets.icons.chat.path,
  Assets.icons.account.path,
];
const _labels = [
  'главная',
  'мероприятия',
  'чат',
  'мой профиль',
];

class MainScreen extends HookWidget {
  const MainScreen({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(() => GetIt.instance.get<MainBloc>());

    return Scaffold(
      body: body,
      bottomNavigationBar: BlocProvider(
        create: (context) => bloc,
        child: const _TabBar(),
      ),
    );
  }
}

class _TabBar extends HookWidget {
  const _TabBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<MainBloc>();
    final controller = useTabController(initialLength: _labels.length);

    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
        if (state.currentIndex != controller.index) {
          controller.index = state.currentIndex;
        }
      },
      builder: (context, state) {
        return TabBar(
          controller: controller,
          indicatorPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          onTap: (i) {
            bloc.add(MainEvent.setTab(index: i));
          },
          tabs: _tabIcons.mapIndexed(
            (index, icon) {
              final selected = state.currentIndex == index;
              final defaultColor = theme.colorScheme.surface;
              final color = (selected
                      ? theme.tabBarTheme.labelColor
                      : theme.tabBarTheme.unselectedLabelColor) ??
                  defaultColor;

              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox.square(
                      dimension: _iconSize,
                      child: SvgPicture.asset(
                        icon,
                        colorFilter: ColorFilter.mode(
                          color,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        _labels[index],
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: color,
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: selected
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.colorScheme.primary,
                            )
                          : const BoxDecoration(),
                      child: const SizedBox.square(
                        dimension: 4,
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
