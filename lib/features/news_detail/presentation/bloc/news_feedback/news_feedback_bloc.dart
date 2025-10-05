import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../domain/models/feedback_model.dart';
import '../../../domain/repositories/news_detail_repository.dart';

part 'news_feedback_bloc.freezed.dart';

@freezed
class NewsFeedbackEvent with _$NewsFeedbackEvent {
  const factory NewsFeedbackEvent.fetch(String newsId) = _FetchFeedback;
  const factory NewsFeedbackEvent.commentSubmitted({
    required String newsId,
    required String comment,
  }) = _CommentSubmitted;
  const factory NewsFeedbackEvent.likePressed() = _LikePressed;
  const factory NewsFeedbackEvent.dislikePressed() = _DislikePressed;
}

@freezed
@freezed
class NewsFeedbackState with _$NewsFeedbackState {
  const factory NewsFeedbackState.initial() = _Initial;
  const factory NewsFeedbackState.loading() = _Loading;
  const factory NewsFeedbackState.loaded(FeedbackModel feedback) = _Loaded;
  const factory NewsFeedbackState.submitting(FeedbackModel feedback) =
      _Submitting; // ✅ Ekledik
  const factory NewsFeedbackState.error(Failure failure) = _Error;
}

class NewsFeedbackBloc extends Bloc<NewsFeedbackEvent, NewsFeedbackState> {
  final NewsDetailRepository repository;

  NewsFeedbackBloc({required this.repository})
      : super(const NewsFeedbackState.initial()) {
    on<_FetchFeedback>(_onFetch);
    on<_CommentSubmitted>(_onCommentSubmitted);
    on<_LikePressed>(_onLikePressed);
    on<_DislikePressed>(_onDislikePressed);
  }

  Future<void> _onFetch(
    _FetchFeedback event,
    Emitter<NewsFeedbackState> emit,
  ) async {
    emit(const NewsFeedbackState.loading());

    final result = await repository.getFeedback(event.newsId);

    result.match(
      (failure) => emit(NewsFeedbackState.error(failure)),
      (data) => emit(NewsFeedbackState.loaded(data)),
    );
  }

  Future<void> _onCommentSubmitted(
    _CommentSubmitted event,
    Emitter<NewsFeedbackState> emit,
  ) async {
    final current = state;
    if (current is _Loaded) {
      emit(NewsFeedbackState.submitting(current.feedback));

      final result = await repository.sendComment(
        newsId: event.newsId,
        comment: event.comment,
      );

      result.match(
        () {
          final updated = current.feedback.copyWith(
            comments: [...current.feedback.comments, event.comment],
            commentCount: current.feedback.commentCount + 1,
          );
          emit(NewsFeedbackState.loaded(updated));
        },
        (Failure failure) {
          emit(NewsFeedbackState.error(failure));
        },
      );
    }
  }

  void _onLikePressed(
    _LikePressed event,
    Emitter<NewsFeedbackState> emit,
  ) {
    final current = state;
    if (current is _Loaded) {
      final feedback = current.feedback;
      final isLikedNow = !feedback.isLiked;

      final updatedFeedback = feedback.copyWith(
        isLiked: isLikedNow,
        likeCount: isLikedNow
            ? feedback.likeCount + 1
            : (feedback.likeCount - 1).clamp(0, double.infinity).toInt(),
      );

      emit(NewsFeedbackState.loaded(updatedFeedback));
    }
  }

  void _onDislikePressed(
    _DislikePressed event,
    Emitter<NewsFeedbackState> emit,
  ) {
    final current = state;
    if (current is _Loaded) {
      final updated = current.feedback.copyWith(isLiked: false);
      emit(NewsFeedbackState.loaded(updated));
    }
  }
}
