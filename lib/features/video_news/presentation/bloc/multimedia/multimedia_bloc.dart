import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trnews/features/video_news/domain/repositories/video_news_repositoriy.dart';

import '../../../../home/domain/models/category_news/category_news_model.dart';
import '../../../../home/domain/repositories/home_repository.dart';

part 'multimedia_bloc.freezed.dart';

@freezed
class MultimediaEvent with _$MultimediaEvent {
  const factory MultimediaEvent.fetch() = FetchMultimedias;
}

@freezed
class MultimediaState with _$MultimediaState {
  const factory MultimediaState.initial() = MultimediaInitial;
  const factory MultimediaState.loading() = MultimediaLoading;
  const factory MultimediaState.loaded(List<CategoryNewsModel> news) =
      MultimediaLoaded;
  const factory MultimediaState.error(String message) = MultimediaError;
}

class MultimediaBloc extends Bloc<MultimediaEvent, MultimediaState> {
  final VideoNewsRepository repository;

  MultimediaBloc(this.repository) : super(const MultimediaInitial()) {
    on<FetchMultimedias>(_onFetch);
  }

  Future<void> _onFetch(
      FetchMultimedias event, Emitter<MultimediaState> emit) async {
    emit(const MultimediaLoading());

    final result = await repository.getMultiMedia();

    result.fold(
      (failure) => emit(MultimediaError(failure.message)),
      (news) => emit(MultimediaLoaded(news)),
    );
  }
}
