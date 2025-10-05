// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorModelImpl _$$AuthorModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthorModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      lastArticleTitle: json['lastArticleTitle'] as String,
      lastArticleDate: json['lastArticleDate'] as String,
      canonical: json['canonical'] as String,
      bio: json['bio'] as String?,
      instagram: json['instagram'] as String?,
      twitter: json['twitter'] as String?,
      facebook: json['facebook'] as String?,
      whatsapp: json['whatsapp'] as String?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AuthorModelImplToJson(_$AuthorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'lastArticleTitle': instance.lastArticleTitle,
      'lastArticleDate': instance.lastArticleDate,
      'canonical': instance.canonical,
      'bio': instance.bio,
      'instagram': instance.instagram,
      'twitter': instance.twitter,
      'facebook': instance.facebook,
      'whatsapp': instance.whatsapp,
      'articles': instance.articles,
    };
