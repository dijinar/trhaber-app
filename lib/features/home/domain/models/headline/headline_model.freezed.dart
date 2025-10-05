// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeadlineModel _$HeadlineModelFromJson(Map<String, dynamic> json) {
  return _HeadlineModel.fromJson(json);
}

/// @nodoc
mixin _$HeadlineModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this HeadlineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeadlineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeadlineModelCopyWith<HeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadlineModelCopyWith<$Res> {
  factory $HeadlineModelCopyWith(
          HeadlineModel value, $Res Function(HeadlineModel) then) =
      _$HeadlineModelCopyWithImpl<$Res, HeadlineModel>;
  @useResult
  $Res call({String id, String title, String image});
}

/// @nodoc
class _$HeadlineModelCopyWithImpl<$Res, $Val extends HeadlineModel>
    implements $HeadlineModelCopyWith<$Res> {
  _$HeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeadlineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadlineModelImplCopyWith<$Res>
    implements $HeadlineModelCopyWith<$Res> {
  factory _$$HeadlineModelImplCopyWith(
          _$HeadlineModelImpl value, $Res Function(_$HeadlineModelImpl) then) =
      __$$HeadlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String image});
}

/// @nodoc
class __$$HeadlineModelImplCopyWithImpl<$Res>
    extends _$HeadlineModelCopyWithImpl<$Res, _$HeadlineModelImpl>
    implements _$$HeadlineModelImplCopyWith<$Res> {
  __$$HeadlineModelImplCopyWithImpl(
      _$HeadlineModelImpl _value, $Res Function(_$HeadlineModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$HeadlineModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadlineModelImpl implements _HeadlineModel {
  const _$HeadlineModelImpl(
      {required this.id, required this.title, required this.image});

  factory _$HeadlineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadlineModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'HeadlineModel(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadlineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  /// Create a copy of HeadlineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadlineModelImplCopyWith<_$HeadlineModelImpl> get copyWith =>
      __$$HeadlineModelImplCopyWithImpl<_$HeadlineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadlineModelImplToJson(
      this,
    );
  }
}

abstract class _HeadlineModel implements HeadlineModel {
  const factory _HeadlineModel(
      {required final String id,
      required final String title,
      required final String image}) = _$HeadlineModelImpl;

  factory _HeadlineModel.fromJson(Map<String, dynamic> json) =
      _$HeadlineModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;

  /// Create a copy of HeadlineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeadlineModelImplCopyWith<_$HeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
