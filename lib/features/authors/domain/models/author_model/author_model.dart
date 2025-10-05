import 'package:freezed_annotation/freezed_annotation.dart';

import '../article_model/article_model.dart';

part 'author_model.freezed.dart';

part 'author_model.g.dart';

@freezed
class AuthorModel with _$AuthorModel {
  const factory AuthorModel({
    required String id,
    required String name,
    required String image,
    required String lastArticleTitle,
    required String lastArticleDate,
    required String canonical,

    // Profil sayfasına özel alanlar
    String? bio,
    String? instagram,
    String? twitter,
    String? facebook,
    String? whatsapp,

    // Tüm yazılar
    List<ArticleModel>? articles,
  }) = _AuthorModel;

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
