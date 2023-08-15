import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/blocs/my_events/my_events_bloc.dart';
import '../widgets/ticket_card.dart';

class MyEventsScreen extends StatelessWidget {
  const MyEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: BlocProvider(
            create: (context) => GetIt.instance.get<MyEventsBloc>()
              ..add(const MyEventsEvent.load()),
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
    final bloc = context.read<MyEventsBloc>();

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              onPressed: () {},
              icon: Assets.icons.back.svg(
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.onSurface,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Text(
              'мои мероприятия',
              style: theme.textTheme.titleLarge,
            ),
            CustomIconButton(
              onPressed: () {},
              icon: Assets.icons.archive.svg(
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.onSurface,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: BlocBuilder<MyEventsBloc, MyEventsState>(
            builder: (context, state) {
              final itemCount = state.tickets.length + 1;

              if (state.isLoading) {
                return const LoadingIndicator();
              }

              if (state.tickets.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    bloc.add(const MyEventsEvent.refresh());
                  },
                  child: ListView(
                    children: const [
                      Center(
                        child: Text('Пусто'),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  bloc.add(const MyEventsEvent.refresh());
                },
                child: NotificationListener(
                  onNotification: (n) {
                    if (n is ScrollNotification) {
                      if (n.metrics.pixels > n.metrics.maxScrollExtent - 50) {
                        bloc.add(const MyEventsEvent.loadMore());
                      }
                    }

                    return false;
                  },
                  child: ListView.builder(
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      if (index == itemCount - 1) {
                        if (state.isLoadingMore) {
                          return const LoadingIndicator();
                        }

                        return const SizedBox.shrink();
                      }

                      final ticket = state.tickets[index];

                      return TicketCard(
                        ticket: ticket,
                        onPressed: () {},
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
