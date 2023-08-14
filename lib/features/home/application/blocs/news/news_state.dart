part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(false) bool isLoadingCategories,
    @Default(false) bool isLoadingNews,
    @Default(false) bool isLoadingMore,
    @Default('') String error,
    String? selectedCategoryID,
    @Default([]) List<NewsCategoryVM> categories,
    @Default(0) int offset,
    @Default(0) int totalCount,
    @Default([]) List<NewsVM> news,
  }) = _NewsState;
}
