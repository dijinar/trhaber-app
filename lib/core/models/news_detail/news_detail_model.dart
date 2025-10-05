import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/home/domain/models/category_news/category_news_model.dart';

part 'news_detail_model.freezed.dart';

@freezed
class NewsDetailModel with _$NewsDetailModel {
  const factory NewsDetailModel({
    required String id,
    required String title,
    required String description,
    required String content,
    required String coverImage,
    required String coverVideo,
    required String categoryId,
    required String categoryName,
    required String editorId,
    required String editorName,
    required String canonical,
    required String date,
    required List<CategoryNewsModel> relationNews,
    @Default(false) bool isSaved,
  }) = _NewsDetailModel;

  factory NewsDetailModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final content = data['content'] as Map<String, dynamic>? ?? {};
    final relationList = data['relationNews'] as List<dynamic>? ?? [];

    return NewsDetailModel(
      id: content['id'] ?? '',
      title: content['title'] ?? '',
      description: content['description'] ?? '',
      coverVideo: content['coverVideo'] ?? '',
      content: content['content'] ?? '',
      coverImage: content['coverImage'] ?? '',
      categoryId: content['categoryId'] ?? '',
      categoryName: content['categoryName'] ?? '',
      editorId: content['editorId'] ?? '',
      editorName: content['editorName'] ?? '',
      canonical: content['canonical'] ?? '',
      date: content['date'] ?? '',
      relationNews: relationList
          .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
