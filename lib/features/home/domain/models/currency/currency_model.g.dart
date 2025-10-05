// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      title: json['title'] as String,
      value: json['value'] as String,
      status: json['status'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
      'status': instance.status,
      'icon': instance.icon,
    };
