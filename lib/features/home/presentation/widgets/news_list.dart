import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../themes/extensions/extensions.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/blocs/news_list/news_list_bloc.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.instance.get<NewsListBloc>()..add(const NewsListEvent.load()),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsListBloc>();

    return BlocBuilder<NewsListBloc, NewsListState>(
      builder: (context, state) {
        final itemCount = state.news.length + 1;

        if (state.news.isEmpty) {
          return const LoadingIndicator();
        }

        return Column(
          children: [
            SizedBox(
              height: 70,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 8,
                  );
                },
                itemBuilder: (context, index) {
                  final category = state.categories[index];

                  if (category.id == state.selectedCategoryID) {
                    return _SelectedCategory(
                      title: category.name,
                    );
                  }

                  return _UnselectedCategory(
                    title: category.name,
                    onPressed: () {
                      bloc.add(
                        NewsListEvent.selectCategory(
                          id: category.id,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  if (index == itemCount - 1) {
                    if (state.isLoadingMore) {
                      return const LoadingIndicator();
                    }

                    return const SizedBox.shrink();
                  }

                  final news = state.news[index];

                  return Text(news.title);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SelectedCategory extends StatelessWidget {
  const _SelectedCategory({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Card(
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
            vertical: 9,
          ),
          child: Text(
            title,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}

class _UnselectedCategory extends StatelessWidget {
  const _UnselectedCategory({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textThemeTX = theme.extension<TextThemeTX>()!;

    return Center(
      child: Card(
        color: theme.colorScheme.tertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
              vertical: 9,
            ),
            child: Text(
              title,
              style: textThemeTX.labelBig,
            ),
          ),
        ),
      ),
    );
  }
}
