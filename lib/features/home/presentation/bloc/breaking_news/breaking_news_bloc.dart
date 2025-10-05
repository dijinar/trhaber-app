import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'breaking_news_bloc.freezed.dart';

@freezed
class BreakingNewsEvent with _$BreakingNewsEvent {
  const factory BreakingNewsEvent.fetch() = FetchBreakingNews;
}

@freezed
class BreakingNewsState with _$BreakingNewsState {
  const factory BreakingNewsState.initial() = BreakingNewsInitial;
  const factory BreakingNewsState.loading() = BreakingNewsLoading;
  const factory BreakingNewsState.loaded(List<CategoryNewsModel> news) =
      BreakingNewsLoaded;
  const factory BreakingNewsState.error(String message) = BreakingNewsError;
}

class BreakingNewsBloc extends Bloc<BreakingNewsEvent, BreakingNewsState> {
  final HomeRepository repository;

  BreakingNewsBloc(this.repository) : super(const BreakingNewsInitial()) {
    on<FetchBreakingNews>(_onFetch);
  }

  Future<void> _onFetch(
      FetchBreakingNews event, Emitter<BreakingNewsState> emit) async {
    emit(const BreakingNewsLoading());

    final result = await repository.getBreakingNews();

    result.fold(
      (failure) => emit(BreakingNewsError(failure.message)),
      (news) => emit(BreakingNewsLoaded(news)),
    );
  }
}
