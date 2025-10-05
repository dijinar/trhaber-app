// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixtureModelImpl _$$FixtureModelImplFromJson(Map<String, dynamic> json) =>
    _$FixtureModelImpl(
      rank: (json['rank'] as num).toInt(),
      draw: (json['draw'] as num).toInt(),
      lose: (json['lose'] as num).toInt(),
      win: (json['win'] as num).toInt(),
      play: (json['play'] as num).toInt(),
      point: (json['point'] as num).toInt(),
      goalfor: (json['goalfor'] as num).toInt(),
      goalagainst: (json['goalagainst'] as num).toInt(),
      goaldistance: (json['goaldistance'] as num).toInt(),
      team: json['team'] as String,
    );

Map<String, dynamic> _$$FixtureModelImplToJson(_$FixtureModelImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'draw': instance.draw,
      'lose': instance.lose,
      'win': instance.win,
      'play': instance.play,
      'point': instance.point,
      'goalfor': instance.goalfor,
      'goalagainst': instance.goalagainst,
      'goaldistance': instance.goaldistance,
      'team': instance.team,
    };
