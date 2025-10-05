import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../../../core/models/news_detail/news_detail_model.dart';
import '../../../domain/repositories/news_detail_repository.dart';

part 'news_detail_bloc.freezed.dart';

@freezed
class NewsDetailEvent with _$NewsDetailEvent {
  const factory NewsDetailEvent.fetch(String newsId) = _FetchNewsDetail;
}

@freezed
class NewsDetailState with _$NewsDetailState {
  const factory NewsDetailState.initial() = _Initial;
  const factory NewsDetailState.loading() = _Loading;
  const factory NewsDetailState.loaded(NewsDetailModel news) = _Loaded;
  const factory NewsDetailState.error(Failure failure) = _Error;
}

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  final NewsDetailRepository repository;

  NewsDetailBloc({required this.repository})
      : super(const NewsDetailState.initial()) {
    on<_FetchNewsDetail>(_onFetch);
  }

  Future<void> _onFetch(
    _FetchNewsDetail event,
    Emitter<NewsDetailState> emit,
  ) async {
    emit(const NewsDetailState.loading());

    final result = await repository.getNewsDetail(event.newsId);

    result.match(
      (failure) => emit(NewsDetailState.error(failure)),
      (detail) => emit(NewsDetailState.loaded(detail)),
    );
  }
}
