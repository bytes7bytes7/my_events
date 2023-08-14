import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/mapper.dart';
import '../../../domain/entities/news.dart';
import '../../../domain/repositories/news_repository.dart';
import '../../coordinators/news_coordinator.dart';
import '../../providers/news_string_provider.dart';
import '../../view_models/news_vm.dart';

part 'news_event.dart';

part 'news_state.dart';

part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(
    this._newsRepository,
    this._stringProvider,
    this._coordinator,
    this._newsMapper,
  ) : super(const NewsState()) {
    on<_LoadEvent>(_load);
    on<_CloseEvent>(_close);
  }

  final NewsRepository _newsRepository;
  final NewsStringProvider _stringProvider;
  final NewsCoordinator _coordinator;
  final Mapper<News, NewsVM> _newsMapper;

  Future<void> _load(
    _LoadEvent event,
    Emitter<NewsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final news = await _newsRepository.getByID(event.newsID);

      final newsVM = _newsMapper.map(news);

      emit(state.copyWith(news: newsVM));
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _close(
    _CloseEvent event,
    Emitter<NewsState> emit,
  ) {
    _coordinator.onClose();
  }
}
