import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trnews/features/search/domain/repositories/search_repository.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';

part 'search_bloc.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started(String keyword) = _Started;
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded({
    required String keyword,
    required List<CategoryNewsModel> results,
  }) = _Loaded;
  const factory SearchState.error(String message) = _Error;
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repository;

  SearchBloc(this.repository) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<SearchState> emit) async {
    emit(const SearchState.loading());

    final result = await repository.searchNews(event.keyword);

    result.fold(
      (failure) => emit(SearchState.error(failure.message)),
      (list) => emit(SearchState.loaded(keyword: event.keyword, results: list)),
    );
  }
}
