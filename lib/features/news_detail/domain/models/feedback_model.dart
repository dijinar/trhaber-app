import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    required List<String> comments,
    required int commentCount,
    required int likeCount,
    required int dislikeCount,
    @Default(false) bool isLiked,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] ?? {};

    final comments = (data['comments'] as List<dynamic>?)
            ?.map((e) => e['message'] as String)
            .toList() ??
        [];

    return FeedbackModel(
      comments: comments,
      commentCount: data['counts']?['comment'] ?? 0,
      likeCount: data['counts']?['like'] ?? 0,
      dislikeCount: data['counts']?['dislike'] ?? 0,
    );
  }
}
