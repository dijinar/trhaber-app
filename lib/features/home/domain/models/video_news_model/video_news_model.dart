import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_news_model.freezed.dart';
part 'video_news_model.g.dart';

@freezed
class VideoNewsModel with _$VideoNewsModel {
  const factory VideoNewsModel({
    required String title,
    @JsonKey(name: 'cover_image') required String coverImage,
    @JsonKey(name: 'video_url') required String videoUrl,
    @JsonKey(name: 'view_count') required int viewCount,
  }) = _VideoNewsModel;

  factory VideoNewsModel.fromJson(Map<String, dynamic> json) =>
      _$VideoNewsModelFromJson(json);
}
