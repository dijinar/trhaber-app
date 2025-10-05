import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category_news/category_news_model.dart';
import '../../../domain/repositories/home_repository.dart';

part 'video_news_bloc.freezed.dart';

@freezed
class VideoNewsEvent with _$VideoNewsEvent {
  const factory VideoNewsEvent.fetch() = FetchVideoNews;
}

@freezed
class VideoNewsState with _$VideoNewsState {
  const factory VideoNewsState.initial() = VideoNewsInitial;
  const factory VideoNewsState.loading() = VideoNewsLoading;
  const factory VideoNewsState.loaded(List<CategoryNewsModel> videos) =
      VideoNewsLoaded;
  const factory VideoNewsState.error(String message) = VideoNewsError;
}

class VideoNewsBloc extends Bloc<VideoNewsEvent, VideoNewsState> {
  final HomeRepository repository;

  VideoNewsBloc(this.repository) : super(const VideoNewsInitial()) {
    on<FetchVideoNews>(_onFetch);
  }

  Future<void> _onFetch(
      FetchVideoNews event, Emitter<VideoNewsState> emit) async {
    emit(const VideoNewsLoading());

    final result = await repository.getWhatHappened();

    result.fold(
      (failure) => emit(VideoNewsError(failure.message)),
      (videos) => emit(VideoNewsLoaded(videos)),
    );
  }
}
