part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const NewsEvent._();

  const factory NewsEvent.load() = _LoadEvent;

  const factory NewsEvent.loadMore() = _LoadMoreEvent;

  const factory NewsEvent.selectCategory({required String id}) =
      _SelectCategoryEvent;

  const factory NewsEvent.refresh() = _RefreshEvent;
}

class _LoadNewsEvent extends NewsEvent {
  const _LoadNewsEvent() : super._();
}
