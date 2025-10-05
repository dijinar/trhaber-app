import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/services/saved_news/saved_news_service.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';

part 'saved_news_bloc.freezed.dart';

@freezed
class SavedNewsEvent with _$SavedNewsEvent {
  const factory SavedNewsEvent.fetch() = _FetchSavedNews;
  const factory SavedNewsEvent.add(CategoryNewsModel news) = _AddNews;
  const factory SavedNewsEvent.remove(String id) = _RemoveNews;
  const factory SavedNewsEvent.unsave(String id) = _UnsaveNews;
}

@freezed
class SavedNewsState with _$SavedNewsState {
  const factory SavedNewsState.initial() = _Initial;
  const factory SavedNewsState.loading() = _Loading;
  const factory SavedNewsState.loaded(List<CategoryNewsModel> news) = _Loaded;
  const factory SavedNewsState.error(String message) = _Error;
}

class SavedNewsBloc extends Bloc<SavedNewsEvent, SavedNewsState> {
  final SavedNewsService service;

  SavedNewsBloc(this.service) : super(const SavedNewsState.initial()) {
    on<_FetchSavedNews>(_onFetch);
    on<_AddNews>(_onAdd);
    on<_RemoveNews>(_onRemove);
    on<_UnsaveNews>(_onUnsave);
  }

  Future<void> _onFetch(
    _FetchSavedNews event,
    Emitter<SavedNewsState> emit,
  ) async {
    emit(const SavedNewsState.loading());
    try {
      final news = await service.getSavedNews();
      emit(SavedNewsState.loaded(news));
    } catch (e) {
      emit(SavedNewsState.error("Failed to fetch saved news."));
    }
  }

  Future<void> _onAdd(
    _AddNews event,
    Emitter<SavedNewsState> emit,
  ) async {
    try {
      await service.add(event.news);

      if (state is _Loaded) {
        final currentList =
            List<CategoryNewsModel>.from((state as _Loaded).news);
        final index = currentList.indexWhere((e) => e.id == event.news.id);

        if (index != -1) {
          // Varsa sadece isSaved'i güncelle
          final updatedItem = currentList[index].copyWith(isSaved: true);
          currentList[index] = updatedItem;
        } else {
          currentList.add(event.news);
        }

        emit(SavedNewsState.loaded(currentList));
      } else {
        final updated = await service.getSavedNews();
        emit(SavedNewsState.loaded(updated));
      }
    } catch (e) {
      emit(SavedNewsState.error("Failed to save news."));
    }
  }

  Future<void> _onRemove(
    _RemoveNews event,
    Emitter<SavedNewsState> emit,
  ) async {
    try {
      await service.remove(event.id);
      final updated = await service.getSavedNews();
      emit(SavedNewsState.loaded(updated));
    } catch (e) {
      emit(SavedNewsState.error("Failed to remove news."));
    }
  }

  Future<void> _onUnsave(
    _UnsaveNews event,
    Emitter<SavedNewsState> emit,
  ) async {
    if (state is _Loaded) {
      final currentList = (state as _Loaded).news.map((e) {
        if (e.id == event.id) {
          //localdende sil
          service.remove(event.id);

          return e.copyWith(isSaved: false);
        }
        return e;
      }).toList();

      emit(SavedNewsState.loaded(currentList));
    }
  }
}
