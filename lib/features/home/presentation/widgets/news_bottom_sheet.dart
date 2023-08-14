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
    return BlocProvider(
      create: (context) =>
          GetIt.instance.get<NewsBloc>()..add(NewsEvent.load(newsID: id)),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;
    final bloc = context.read<NewsBloc>();

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      builder: (context, controller) {
        return BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingIndicator();
            }

            final news = state.news;
            if (news == null) {
              return Center(
                child:
                    Text(state.error.isNotEmpty ? state.error : 'Нет данных'),
              );
            }

            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox.shrink(),
                      Text(
                        'Новость',
                        style: theme.textTheme.titleLarge,
                      ),
                      InkWell(
                        onTap: () {
                          bloc.add(const NewsEvent.close());
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.colorScheme.background,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Icon(
                              Icons.close,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(12),
                        child: Image.memory(
                          news.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: ElevatedButton(
                        style: elevatedButtonTX.fivefold,
                        onPressed: () {},
                        child: Assets.icons.share.svg(),
                      ),
                    ),
                  ],
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
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  news.content,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
