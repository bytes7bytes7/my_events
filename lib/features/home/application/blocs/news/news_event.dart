part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.load({required String newsID}) = _LoadEvent;

  const factory NewsEvent.close() = _CloseEvent;
}
