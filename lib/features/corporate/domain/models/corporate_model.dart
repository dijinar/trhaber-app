import 'package:freezed_annotation/freezed_annotation.dart';

part 'corporate_model.freezed.dart';
part 'corporate_model.g.dart';

@freezed
class CorporateModel with _$CorporateModel {
  const factory CorporateModel({
    required String id,
    required String title,
    required String content,
  }) = _CorporateModel;

  factory CorporateModel.fromJson(Map<String, dynamic> json) =>
      _$CorporateModelFromJson(json);
}
