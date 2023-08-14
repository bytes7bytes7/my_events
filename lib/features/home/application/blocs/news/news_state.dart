part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(false) bool isLoading,
    @Default('') String error,
    NewsVM? news,
  }) = _NewsState;
}
