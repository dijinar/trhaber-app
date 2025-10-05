// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryNewsModelImpl _$$CategoryNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryNewsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      image: json['image'] as String?,
      canonical: json['canonical'] as String,
      isSaved: json['isSaved'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoryNewsModelImplToJson(
        _$CategoryNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'image': instance.image,
      'canonical': instance.canonical,
      'isSaved': instance.isSaved,
    };
