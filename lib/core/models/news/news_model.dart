import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    required String author,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
    @JsonKey(name: 'under_title') required String underTitle,
    required String type,
    @Default(false) bool isSaved,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
