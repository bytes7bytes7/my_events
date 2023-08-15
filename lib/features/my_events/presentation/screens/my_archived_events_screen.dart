import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/blocs/my_archived_events/my_archived_events_bloc.dart';
import '../widgets/ticket_card.dart';

class MyArchivedEventsScreen extends StatelessWidget {
  const MyArchivedEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<MyArchivedEventsBloc>()
        ..add(const MyArchivedEventsEvent.load()),
      child: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: _AppBar(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: _Body(),
          ),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<MyArchivedEventsBloc>();

    return Padding(
      padding: const EdgeInsets.only(
        right: 24,
        left: 12,
        top: 10,
        bottom: 10,
      ),
      child: AppBar(
        leading: Center(
          child: CustomIconButton(
            onPressed: () {
              bloc.add(const MyArchivedEventsEvent.back());
            },
            icon: Assets.icons.back.svg(
              colorFilter: ColorFilter.mode(
                theme.colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'архив мероприятий',
          style: theme.textTheme.titleLarge,
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('очистить'),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MyArchivedEventsBloc>();

    return Column(
      children: [
        Expanded(
          child: BlocBuilder<MyArchivedEventsBloc, MyArchivedEventsState>(
            builder: (context, state) {
              final itemCount = state.tickets.length + 1;

              if (state.isLoading) {
                return const LoadingIndicator();
              }

              if (state.tickets.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    bloc.add(const MyArchivedEventsEvent.refresh());
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

              return LazyLoadScrollView(
                onEndOfPage: () {
                  bloc.add(const MyArchivedEventsEvent.loadMore());
                },
                child: RefreshIndicator(
                  onRefresh: () async {
                    bloc.add(const MyArchivedEventsEvent.refresh());
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
