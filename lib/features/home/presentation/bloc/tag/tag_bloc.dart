import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/models/tag/tag_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'tag_bloc.freezed.dart';

@freezed
class TagEvent with _$TagEvent {
  const factory TagEvent.fetch() = _Fetch;
  const factory TagEvent.select(String tagId) = _Select;
}

@freezed
class TagState with _$TagState {
  const factory TagState.initial() = _Initial;
  const factory TagState.loading() = _Loading;
  const factory TagState.loaded({
    required List<TagModel> tags,
    required Map<String, List<CategoryNewsModel>> tagNews,
    required String selectedTagId,
  }) = _Loaded;
  const factory TagState.error(String message) = _Error;
}

class TagBloc extends Bloc<TagEvent, TagState> {
  final HomeRepository repository;

  TagBloc(this.repository) : super(const TagState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Select>(_onSelect);
  }

  Future<void> _onFetch(_Fetch event, Emitter<TagState> emit) async {
    emit(const TagState.loading());

    final tagResult = await repository.getTags();

    await tagResult.fold(
      (failure) async {
        emit(TagState.error(failure.message));
      },
      (tags) async {
        if (tags.isEmpty) {
          emit(const TagState.error("Etiket listesi boş"));
          return;
        }

        final firstTag = tags.first;
        final detailResult = await repository.getTagDetails(firstTag.id);

        detailResult.fold(
          (failure) => emit(TagState.error(failure.message)),
          (news) => emit(TagState.loaded(
            tags: tags,
            tagNews: {firstTag.id: news},
            selectedTagId: firstTag.id,
          )),
        );
      },
    );
  }

  Future<void> _onSelect(_Select event, Emitter<TagState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // Zaten varsa tekrar çekme
      if (currentState.tagNews.containsKey(event.tagId)) {
        emit(currentState.copyWith(selectedTagId: event.tagId));
        return;
      }

      // Veri yoksa çek
      final detailResult = await repository.getTagDetails(event.tagId);

      detailResult.fold(
        (failure) => emit(TagState.error(failure.message)),
        (news) {
          final updatedMap =
              Map<String, List<CategoryNewsModel>>.from(currentState.tagNews);
          updatedMap[event.tagId] = news;

          emit(currentState.copyWith(
            tagNews: updatedMap,
            selectedTagId: event.tagId,
          ));
        },
      );
    }
  }
}
