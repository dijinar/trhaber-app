// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'corporate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CorporateModel _$CorporateModelFromJson(Map<String, dynamic> json) {
  return _CorporateModel.fromJson(json);
}

/// @nodoc
mixin _$CorporateModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CorporateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CorporateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CorporateModelCopyWith<CorporateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorporateModelCopyWith<$Res> {
  factory $CorporateModelCopyWith(
          CorporateModel value, $Res Function(CorporateModel) then) =
      _$CorporateModelCopyWithImpl<$Res, CorporateModel>;
  @useResult
  $Res call({String id, String title, String content});
}

/// @nodoc
class _$CorporateModelCopyWithImpl<$Res, $Val extends CorporateModel>
    implements $CorporateModelCopyWith<$Res> {
  _$CorporateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CorporateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CorporateModelImplCopyWith<$Res>
    implements $CorporateModelCopyWith<$Res> {
  factory _$$CorporateModelImplCopyWith(_$CorporateModelImpl value,
          $Res Function(_$CorporateModelImpl) then) =
      __$$CorporateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String content});
}

/// @nodoc
class __$$CorporateModelImplCopyWithImpl<$Res>
    extends _$CorporateModelCopyWithImpl<$Res, _$CorporateModelImpl>
    implements _$$CorporateModelImplCopyWith<$Res> {
  __$$CorporateModelImplCopyWithImpl(
      _$CorporateModelImpl _value, $Res Function(_$CorporateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CorporateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$CorporateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CorporateModelImpl implements _CorporateModel {
  const _$CorporateModelImpl(
      {required this.id, required this.title, required this.content});

  factory _$CorporateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CorporateModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'CorporateModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorporateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  /// Create a copy of CorporateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CorporateModelImplCopyWith<_$CorporateModelImpl> get copyWith =>
      __$$CorporateModelImplCopyWithImpl<_$CorporateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CorporateModelImplToJson(
      this,
    );
  }
}

abstract class _CorporateModel implements CorporateModel {
  const factory _CorporateModel(
      {required final String id,
      required final String title,
      required final String content}) = _$CorporateModelImpl;

  factory _CorporateModel.fromJson(Map<String, dynamic> json) =
      _$CorporateModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;

  /// Create a copy of CorporateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CorporateModelImplCopyWith<_$CorporateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
