part of 'news_list_bloc.dart';

@freezed
class NewsListState with _$NewsListState {
  const factory NewsListState({
    @Default(false) bool isLoadingCategories,
    @Default(false) bool isLoadingNews,
    @Default(false) bool isLoadingMore,
    @Default('') String error,
    String? selectedCategoryID,
    @Default([]) List<NewsCategoryVM> categories,
    @Default(0) int offset,
    @Default(0) int totalCount,
    @Default([]) List<NewsVM> news,
  }) = _NewsListState;
}
