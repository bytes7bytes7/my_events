import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../../common/common.dart';
import '../../application/blocs/news/news_bloc.dart';

class NewsBottomSheet extends StatelessWidget {
  const NewsBottomSheet({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        maxChildSize: 1,
        minChildSize: 1,
        builder: (context, controller) {
          return BlocProvider(
            create: (context) => GetIt.instance.get<NewsBloc>()
              ..add(NewsEvent.load(newsID: id)),
            child: _Body(
              controller: controller,
            ),
          );
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.controller,
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;
    final bloc = context.read<NewsBloc>();

    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingIndicator();
        }

        final news = state.news;
        if (news == null) {
          return Center(
            child: Text(state.error.isNotEmpty ? state.error : 'Нет данных'),
          );
        }

        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10,
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text(
                  'Новость',
                  style: theme.textTheme.titleLarge,
                ),
                actions: [
                  Center(
                    child: Material(
                      color: theme.colorScheme.background,
                      borderRadius: BorderRadius.circular(20),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () {
                          bloc.add(const NewsEvent.close());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            Icons.close,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: ListView(
            controller: controller,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              AspectRatio(
                aspectRatio: 2 / 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: MemoryImage(
                        news.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Theme(
                        data: theme.copyWith(
                          elevatedButtonTheme: ElevatedButtonThemeData(
                            style: elevatedButtonTX.fivefold.copyWith(
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Assets.icons.share.svg(
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                news.title,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${news.publishedAt} • ${news.readTime}',
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                news.content,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        );
      },
    );
  }
}
