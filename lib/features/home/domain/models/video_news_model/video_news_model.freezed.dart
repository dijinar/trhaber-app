// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoNewsModel _$VideoNewsModelFromJson(Map<String, dynamic> json) {
  return _VideoNewsModel.fromJson(json);
}

/// @nodoc
mixin _$VideoNewsModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image')
  String get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int get viewCount => throw _privateConstructorUsedError;

  /// Serializes this VideoNewsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoNewsModelCopyWith<VideoNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoNewsModelCopyWith<$Res> {
  factory $VideoNewsModelCopyWith(
          VideoNewsModel value, $Res Function(VideoNewsModel) then) =
      _$VideoNewsModelCopyWithImpl<$Res, VideoNewsModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'cover_image') String coverImage,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'view_count') int viewCount});
}

/// @nodoc
class _$VideoNewsModelCopyWithImpl<$Res, $Val extends VideoNewsModel>
    implements $VideoNewsModelCopyWith<$Res> {
  _$VideoNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coverImage = null,
    Object? videoUrl = null,
    Object? viewCount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoNewsModelImplCopyWith<$Res>
    implements $VideoNewsModelCopyWith<$Res> {
  factory _$$VideoNewsModelImplCopyWith(_$VideoNewsModelImpl value,
          $Res Function(_$VideoNewsModelImpl) then) =
      __$$VideoNewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'cover_image') String coverImage,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'view_count') int viewCount});
}

/// @nodoc
class __$$VideoNewsModelImplCopyWithImpl<$Res>
    extends _$VideoNewsModelCopyWithImpl<$Res, _$VideoNewsModelImpl>
    implements _$$VideoNewsModelImplCopyWith<$Res> {
  __$$VideoNewsModelImplCopyWithImpl(
      _$VideoNewsModelImpl _value, $Res Function(_$VideoNewsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coverImage = null,
    Object? videoUrl = null,
    Object? viewCount = null,
  }) {
    return _then(_$VideoNewsModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoNewsModelImpl implements _VideoNewsModel {
  const _$VideoNewsModelImpl(
      {required this.title,
      @JsonKey(name: 'cover_image') required this.coverImage,
      @JsonKey(name: 'video_url') required this.videoUrl,
      @JsonKey(name: 'view_count') required this.viewCount});

  factory _$VideoNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoNewsModelImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'cover_image')
  final String coverImage;
  @override
  @JsonKey(name: 'video_url')
  final String videoUrl;
  @override
  @JsonKey(name: 'view_count')
  final int viewCount;

  @override
  String toString() {
    return 'VideoNewsModel(title: $title, coverImage: $coverImage, videoUrl: $videoUrl, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoNewsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, coverImage, videoUrl, viewCount);

  /// Create a copy of VideoNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoNewsModelImplCopyWith<_$VideoNewsModelImpl> get copyWith =>
      __$$VideoNewsModelImplCopyWithImpl<_$VideoNewsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoNewsModelImplToJson(
      this,
    );
  }
}

abstract class _VideoNewsModel implements VideoNewsModel {
  const factory _VideoNewsModel(
          {required final String title,
          @JsonKey(name: 'cover_image') required final String coverImage,
          @JsonKey(name: 'video_url') required final String videoUrl,
          @JsonKey(name: 'view_count') required final int viewCount}) =
      _$VideoNewsModelImpl;

  factory _VideoNewsModel.fromJson(Map<String, dynamic> json) =
      _$VideoNewsModelImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'cover_image')
  String get coverImage;
  @override
  @JsonKey(name: 'video_url')
  String get videoUrl;
  @override
  @JsonKey(name: 'view_count')
  int get viewCount;

  /// Create a copy of VideoNewsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoNewsModelImplCopyWith<_$VideoNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
