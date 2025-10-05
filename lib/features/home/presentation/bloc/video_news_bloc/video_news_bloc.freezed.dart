// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchVideoNews value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchVideoNews value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVideoNews value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoNewsEventCopyWith<$Res> {
  factory $VideoNewsEventCopyWith(
          VideoNewsEvent value, $Res Function(VideoNewsEvent) then) =
      _$VideoNewsEventCopyWithImpl<$Res, VideoNewsEvent>;
}

/// @nodoc
class _$VideoNewsEventCopyWithImpl<$Res, $Val extends VideoNewsEvent>
    implements $VideoNewsEventCopyWith<$Res> {
  _$VideoNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoNewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchVideoNewsImplCopyWith<$Res> {
  factory _$$FetchVideoNewsImplCopyWith(_$FetchVideoNewsImpl value,
          $Res Function(_$FetchVideoNewsImpl) then) =
      __$$FetchVideoNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchVideoNewsImplCopyWithImpl<$Res>
    extends _$VideoNewsEventCopyWithImpl<$Res, _$FetchVideoNewsImpl>
    implements _$$FetchVideoNewsImplCopyWith<$Res> {
  __$$FetchVideoNewsImplCopyWithImpl(
      _$FetchVideoNewsImpl _value, $Res Function(_$FetchVideoNewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchVideoNewsImpl implements FetchVideoNews {
  const _$FetchVideoNewsImpl();

  @override
  String toString() {
    return 'VideoNewsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchVideoNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchVideoNews value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchVideoNews value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVideoNews value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchVideoNews implements VideoNewsEvent {
  const factory FetchVideoNews() = _$FetchVideoNewsImpl;
}

/// @nodoc
mixin _$VideoNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> videos) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> videos)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoNewsInitial value) initial,
    required TResult Function(VideoNewsLoading value) loading,
    required TResult Function(VideoNewsLoaded value) loaded,
    required TResult Function(VideoNewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoNewsInitial value)? initial,
    TResult? Function(VideoNewsLoading value)? loading,
    TResult? Function(VideoNewsLoaded value)? loaded,
    TResult? Function(VideoNewsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoNewsInitial value)? initial,
    TResult Function(VideoNewsLoading value)? loading,
    TResult Function(VideoNewsLoaded value)? loaded,
    TResult Function(VideoNewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoNewsStateCopyWith<$Res> {
  factory $VideoNewsStateCopyWith(
          VideoNewsState value, $Res Function(VideoNewsState) then) =
      _$VideoNewsStateCopyWithImpl<$Res, VideoNewsState>;
}

/// @nodoc
class _$VideoNewsStateCopyWithImpl<$Res, $Val extends VideoNewsState>
    implements $VideoNewsStateCopyWith<$Res> {
  _$VideoNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VideoNewsInitialImplCopyWith<$Res> {
  factory _$$VideoNewsInitialImplCopyWith(_$VideoNewsInitialImpl value,
          $Res Function(_$VideoNewsInitialImpl) then) =
      __$$VideoNewsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoNewsInitialImplCopyWithImpl<$Res>
    extends _$VideoNewsStateCopyWithImpl<$Res, _$VideoNewsInitialImpl>
    implements _$$VideoNewsInitialImplCopyWith<$Res> {
  __$$VideoNewsInitialImplCopyWithImpl(_$VideoNewsInitialImpl _value,
      $Res Function(_$VideoNewsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoNewsInitialImpl implements VideoNewsInitial {
  const _$VideoNewsInitialImpl();

  @override
  String toString() {
    return 'VideoNewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoNewsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoNewsInitial value) initial,
    required TResult Function(VideoNewsLoading value) loading,
    required TResult Function(VideoNewsLoaded value) loaded,
    required TResult Function(VideoNewsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoNewsInitial value)? initial,
    TResult? Function(VideoNewsLoading value)? loading,
    TResult? Function(VideoNewsLoaded value)? loaded,
    TResult? Function(VideoNewsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoNewsInitial value)? initial,
    TResult Function(VideoNewsLoading value)? loading,
    TResult Function(VideoNewsLoaded value)? loaded,
    TResult Function(VideoNewsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VideoNewsInitial implements VideoNewsState {
  const factory VideoNewsInitial() = _$VideoNewsInitialImpl;
}

/// @nodoc
abstract class _$$VideoNewsLoadingImplCopyWith<$Res> {
  factory _$$VideoNewsLoadingImplCopyWith(_$VideoNewsLoadingImpl value,
          $Res Function(_$VideoNewsLoadingImpl) then) =
      __$$VideoNewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoNewsLoadingImplCopyWithImpl<$Res>
    extends _$VideoNewsStateCopyWithImpl<$Res, _$VideoNewsLoadingImpl>
    implements _$$VideoNewsLoadingImplCopyWith<$Res> {
  __$$VideoNewsLoadingImplCopyWithImpl(_$VideoNewsLoadingImpl _value,
      $Res Function(_$VideoNewsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoNewsLoadingImpl implements VideoNewsLoading {
  const _$VideoNewsLoadingImpl();

  @override
  String toString() {
    return 'VideoNewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoNewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoNewsInitial value) initial,
    required TResult Function(VideoNewsLoading value) loading,
    required TResult Function(VideoNewsLoaded value) loaded,
    required TResult Function(VideoNewsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoNewsInitial value)? initial,
    TResult? Function(VideoNewsLoading value)? loading,
    TResult? Function(VideoNewsLoaded value)? loaded,
    TResult? Function(VideoNewsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoNewsInitial value)? initial,
    TResult Function(VideoNewsLoading value)? loading,
    TResult Function(VideoNewsLoaded value)? loaded,
    TResult Function(VideoNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoNewsLoading implements VideoNewsState {
  const factory VideoNewsLoading() = _$VideoNewsLoadingImpl;
}

/// @nodoc
abstract class _$$VideoNewsLoadedImplCopyWith<$Res> {
  factory _$$VideoNewsLoadedImplCopyWith(_$VideoNewsLoadedImpl value,
          $Res Function(_$VideoNewsLoadedImpl) then) =
      __$$VideoNewsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> videos});
}

/// @nodoc
class __$$VideoNewsLoadedImplCopyWithImpl<$Res>
    extends _$VideoNewsStateCopyWithImpl<$Res, _$VideoNewsLoadedImpl>
    implements _$$VideoNewsLoadedImplCopyWith<$Res> {
  __$$VideoNewsLoadedImplCopyWithImpl(
      _$VideoNewsLoadedImpl _value, $Res Function(_$VideoNewsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$VideoNewsLoadedImpl(
      null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$VideoNewsLoadedImpl implements VideoNewsLoaded {
  const _$VideoNewsLoadedImpl(final List<CategoryNewsModel> videos)
      : _videos = videos;

  final List<CategoryNewsModel> _videos;
  @override
  List<CategoryNewsModel> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'VideoNewsState.loaded(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoNewsLoadedImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoNewsLoadedImplCopyWith<_$VideoNewsLoadedImpl> get copyWith =>
      __$$VideoNewsLoadedImplCopyWithImpl<_$VideoNewsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoNewsInitial value) initial,
    required TResult Function(VideoNewsLoading value) loading,
    required TResult Function(VideoNewsLoaded value) loaded,
    required TResult Function(VideoNewsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoNewsInitial value)? initial,
    TResult? Function(VideoNewsLoading value)? loading,
    TResult? Function(VideoNewsLoaded value)? loaded,
    TResult? Function(VideoNewsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoNewsInitial value)? initial,
    TResult Function(VideoNewsLoading value)? loading,
    TResult Function(VideoNewsLoaded value)? loaded,
    TResult Function(VideoNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VideoNewsLoaded implements VideoNewsState {
  const factory VideoNewsLoaded(final List<CategoryNewsModel> videos) =
      _$VideoNewsLoadedImpl;

  List<CategoryNewsModel> get videos;

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoNewsLoadedImplCopyWith<_$VideoNewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoNewsErrorImplCopyWith<$Res> {
  factory _$$VideoNewsErrorImplCopyWith(_$VideoNewsErrorImpl value,
          $Res Function(_$VideoNewsErrorImpl) then) =
      __$$VideoNewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VideoNewsErrorImplCopyWithImpl<$Res>
    extends _$VideoNewsStateCopyWithImpl<$Res, _$VideoNewsErrorImpl>
    implements _$$VideoNewsErrorImplCopyWith<$Res> {
  __$$VideoNewsErrorImplCopyWithImpl(
      _$VideoNewsErrorImpl _value, $Res Function(_$VideoNewsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$VideoNewsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VideoNewsErrorImpl implements VideoNewsError {
  const _$VideoNewsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VideoNewsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoNewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoNewsErrorImplCopyWith<_$VideoNewsErrorImpl> get copyWith =>
      __$$VideoNewsErrorImplCopyWithImpl<_$VideoNewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> videos) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> videos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> videos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoNewsInitial value) initial,
    required TResult Function(VideoNewsLoading value) loading,
    required TResult Function(VideoNewsLoaded value) loaded,
    required TResult Function(VideoNewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoNewsInitial value)? initial,
    TResult? Function(VideoNewsLoading value)? loading,
    TResult? Function(VideoNewsLoaded value)? loaded,
    TResult? Function(VideoNewsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoNewsInitial value)? initial,
    TResult Function(VideoNewsLoading value)? loading,
    TResult Function(VideoNewsLoaded value)? loaded,
    TResult Function(VideoNewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VideoNewsError implements VideoNewsState {
  const factory VideoNewsError(final String message) = _$VideoNewsErrorImpl;

  String get message;

  /// Create a copy of VideoNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoNewsErrorImplCopyWith<_$VideoNewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
