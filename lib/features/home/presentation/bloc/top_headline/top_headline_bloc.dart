import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'top_headline_bloc.freezed.dart';

@freezed
class TopHeadlineEvent with _$TopHeadlineEvent {
  const factory TopHeadlineEvent.fetch() = FetchTopHeadlines;
}

@freezed
class TopHeadlineState with _$TopHeadlineState {
  const factory TopHeadlineState.initial() = TopHeadlineInitial;
  const factory TopHeadlineState.loading() = TopHeadlineLoading;
  const factory TopHeadlineState.loaded(List<CategoryNewsModel> news) =
      TopHeadlineLoaded;
  const factory TopHeadlineState.error(String message) = TopHeadlineError;
}

class TopHeadlineBloc extends Bloc<TopHeadlineEvent, TopHeadlineState> {
  final HomeRepository repository;

  TopHeadlineBloc(this.repository) : super(const TopHeadlineInitial()) {
    on<FetchTopHeadlines>(_onFetch);
  }

  Future<void> _onFetch(
      FetchTopHeadlines event, Emitter<TopHeadlineState> emit) async {
    emit(const TopHeadlineLoading());

    final result = await repository.getTopHeadlines();

    result.fold(
      (failure) => emit(TopHeadlineError(failure.message)),
      (news) => emit(TopHeadlineLoaded(news)),
    );
  }
}
