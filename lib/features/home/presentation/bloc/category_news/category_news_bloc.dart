import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:trnews/features/home/domain/models/category_news/category_news_model.dart';
import 'package:trnews/features/home/domain/models/category/category_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'category_news_bloc.freezed.dart';

@freezed
class CategoryNewsEvent with _$CategoryNewsEvent {
  const factory CategoryNewsEvent.fetch(String categoryId) = FetchCategoryNews;
  const factory CategoryNewsEvent.loadMore(String categoryId) =
      LoadMoreCategoryNews;
}

@freezed
class CategoryNewsState with _$CategoryNewsState {
  const factory CategoryNewsState.initial() = CategoryNewsInitial;
  const factory CategoryNewsState.loading() = CategoryNewsLoading;
  const factory CategoryNewsState.loaded({
    required CategoryModel category,
    required List<CategoryNewsModel> news,
    required int currentPage,
    required bool isLastPage,
  }) = CategoryNewsLoaded;
  const factory CategoryNewsState.error(String message) = CategoryNewsError;
}

class CategoryNewsBloc extends Bloc<CategoryNewsEvent, CategoryNewsState> {
  final HomeRepository repository;

  CategoryNewsBloc(this.repository) : super(const CategoryNewsState.initial()) {
    on<FetchCategoryNews>(_onFetch);
    on<LoadMoreCategoryNews>(_onLoadMore);
  }

  Future<void> _onFetch(
    FetchCategoryNews event,
    Emitter<CategoryNewsState> emit,
  ) async {
    emit(const CategoryNewsState.loading());

    final result = await repository.getCategoryNewsWithInfo(event.categoryId);

    result.fold(
      (failure) => emit(CategoryNewsState.error(failure.message)),
      (data) async {
        final category = data.$1;
        final newsList = data.$2;
        final isLastPage = newsList.length < 10;

        emit(CategoryNewsState.loaded(
          category: category,
          news: newsList,
          currentPage: 1,
          isLastPage: isLastPage,
        ));

        // ✅ Eğer haber sayısı 10'dan fazlaysa bir defaya mahsus bir sonraki sayfayı çek
        if (!isLastPage) {
          add(LoadMoreCategoryNews(event.categoryId));
        }
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreCategoryNews event,
    Emitter<CategoryNewsState> emit,
  ) async {
    final currentState = state;

    if (currentState is! CategoryNewsLoaded || currentState.isLastPage) return;

    // Max 10 sayfaya kadar yükle
    if (currentState.currentPage >= 10) {
      emit(currentState.copyWith(isLastPage: true));
      return;
    }

    final nextPage = currentState.currentPage + 1;
    final result =
        await repository.getCategoryNews(event.categoryId, page: nextPage);

    result.fold(
      (failure) {
        // silently ignore loadMore failure
      },
      (newList) {
        final updatedList = [...currentState.news, ...newList];
        final isLast = newList.length < 10 || nextPage >= 10;

        emit(currentState.copyWith(
          news: updatedList,
          currentPage: nextPage,
          isLastPage: isLast,
        ));
      },
    );
  }
}
