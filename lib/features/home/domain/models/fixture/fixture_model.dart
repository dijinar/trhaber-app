import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture_model.freezed.dart';
part 'fixture_model.g.dart';

@freezed
class FixtureModel with _$FixtureModel {
  const factory FixtureModel({
    required int rank,
    required int draw,
    required int lose,
    required int win,
    required int play,
    required int point,
    required int goalfor,
    required int goalagainst,
    required int goaldistance,
    required String team,
  }) = _FixtureModel;

  factory FixtureModel.fromJson(Map<String, dynamic> json) =>
      _$FixtureModelFromJson(json);
}
