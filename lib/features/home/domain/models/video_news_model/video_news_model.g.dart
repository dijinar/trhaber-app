// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoNewsModelImpl _$$VideoNewsModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoNewsModelImpl(
      title: json['title'] as String,
      coverImage: json['cover_image'] as String,
      videoUrl: json['video_url'] as String,
      viewCount: (json['view_count'] as num).toInt(),
    );

Map<String, dynamic> _$$VideoNewsModelImplToJson(
        _$VideoNewsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cover_image': instance.coverImage,
      'video_url': instance.videoUrl,
      'view_count': instance.viewCount,
    };
