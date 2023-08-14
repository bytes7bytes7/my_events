part of 'news_list_bloc.dart';

@freezed
class NewsListEvent with _$NewsListEvent {
  const NewsListEvent._();

  const factory NewsListEvent.load() = _LoadEvent;

  const factory NewsListEvent.loadMore() = _LoadMoreEvent;

  const factory NewsListEvent.selectCategory({required String id}) =
      _SelectCategoryEvent;

  const factory NewsListEvent.refresh() = _RefreshEvent;

  const factory NewsListEvent.onCardPressed({required String id}) =
      _OnCardPressedEvent;
}

class _LoadNewsListEvent extends NewsListEvent {
  const _LoadNewsListEvent() : super._();
}
