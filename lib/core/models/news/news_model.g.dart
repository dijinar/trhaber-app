// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      author: json['author'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      underTitle: json['under_title'] as String,
      type: json['type'] as String,
      isSaved: json['isSaved'] as bool? ?? false,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'author': instance.author,
      'published_at': instance.publishedAt.toIso8601String(),
      'under_title': instance.underTitle,
      'type': instance.type,
      'isSaved': instance.isSaved,
    };
