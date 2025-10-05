import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_news_model.freezed.dart';
part 'category_news_model.g.dart';

@freezed
class CategoryNewsModel with _$CategoryNewsModel {
  const factory CategoryNewsModel({
    required String id,
    required String title,
    required String date,
    String? image,
    required String canonical,
    @Default(false) bool isSaved,
  }) = _CategoryNewsModel;

  factory CategoryNewsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryNewsModelFromJson(json);
}
