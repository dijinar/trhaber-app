import 'package:freezed_annotation/freezed_annotation.dart';

part 'headline_model.freezed.dart';
part 'headline_model.g.dart';

@freezed
class HeadlineModel with _$HeadlineModel {
  const factory HeadlineModel({
    required String id,
    required String title,
    required String image,
  }) = _HeadlineModel;

  factory HeadlineModel.fromJson(Map<String, dynamic> json) =>
      _$HeadlineModelFromJson(json);
}
