import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/mapper.dart';
import '../../../domain/entities/news.dart';
import '../../../domain/entities/news_category.dart';
import '../../../domain/repositories/news_repository.dart';
import '../../providers/news_list_string_provider.dart';
import '../../view_models/news_category_vm.dart';
import '../../view_models/news_vm.dart';

part 'news_list_event.dart';

part 'news_list_state.dart';

part 'news_list_bloc.freezed.dart';

const _limit = 10;

@injectable
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  NewsListBloc(
    this._newsRepository,
    this._stringProvider,
    this._newsCategoryMapper,
    this._newsMapper,
  ) : super(const NewsListState()) {
    on<_LoadEvent>(_load);
    on<_LoadMoreEvent>(_loadMore);
    on<_SelectCategoryEvent>(_selectCategory);
    on<_RefreshEvent>(_refresh);

    // private
    on<_LoadNewsListEvent>(_loadNews);
  }

  final NewsRepository _newsRepository;
  final NewsListStringProvider _stringProvider;
  final Mapper<NewsCategory, NewsCategoryVM> _newsCategoryMapper;
  final Mapper<News, NewsVM> _newsMapper;

  Future<void> _load(
    _LoadEvent event,
    Emitter<NewsListState> emit,
  ) async {
    if (state.isLoadingCategories) {
      return;
    }

    if (state.isLoadingNews) {
      return;
    }

    if (state.isLoadingMore) {
      return;
    }

    emit(state.copyWith(isLoadingCategories: true));

    try {
      final categories = await _newsRepository.getCategories();

      final categoriesVM = _newsCategoryMapper.mapList(categories);

      emit(
        state.copyWith(
          selectedCategoryID: categoriesVM.first.id,
          categories: categoriesVM,
        ),
      );

      add(const _LoadNewsListEvent());
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoadCategories));
    } finally {
      emit(state.copyWith(isLoadingCategories: false));
    }
  }

  Future<void> _loadMore(
    _LoadMoreEvent event,
    Emitter<NewsListState> emit,
  ) async {
    if (state.isLoadingCategories) {
      return;
    }

    if (state.isLoadingNews) {
      return;
    }

    if (state.isLoadingMore) {
      return;
    }

    final categoryID = state.selectedCategoryID;
    if (categoryID == null) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true));

    try {
      final oldNews = List.of(state.news);

      final news = await _newsRepository.get(
        categoryID: categoryID,
        offset: state.offset,
        limit: _limit,
      );

      final newsVM = _newsMapper.mapList(news.value);

      emit(
        state.copyWith(
          offset: news.offset,
          totalCount: news.totalCount,
          news: oldNews..addAll(newsVM),
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoadNews));
    } finally {
      emit(state.copyWith(isLoadingMore: false));
    }
  }

  Future<void> _selectCategory(
    _SelectCategoryEvent event,
    Emitter<NewsListState> emit,
  ) async {
    final hasCategory =
        state.categories.firstWhereOrNull((e) => e.id == event.id) != null;
    if (!hasCategory) {
      return;
    }

    emit(state.copyWith(selectedCategoryID: event.id));

    add(const _LoadNewsListEvent());
  }

  Future<void> _refresh(
    _RefreshEvent event,
    Emitter<NewsListState> emit,
  ) async {
    add(const NewsListEvent.load());
  }

  Future<void> _loadNews(
    _LoadNewsListEvent event,
    Emitter<NewsListState> emit,
  ) async {
    if (state.isLoadingNews) {
      return;
    }

    if (state.isLoadingMore) {
      return;
    }

    final categoryID = state.selectedCategoryID;
    if (categoryID == null) {
      return;
    }

    emit(state.copyWith(isLoadingNews: true));

    try {
      final news = await _newsRepository.get(
        categoryID: categoryID,
        offset: 0,
        limit: _limit,
      );

      final newsVM = _newsMapper.mapList(news.value);

      emit(
        state.copyWith(
          offset: news.offset,
          totalCount: news.totalCount,
          news: newsVM,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoadNews));
    } finally {
      emit(state.copyWith(isLoadingNews: false));
    }
  }
}
