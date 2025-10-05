// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multimedia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultimediaEvent {
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
    required TResult Function(FetchMultimedias value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMultimedias value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMultimedias value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaEventCopyWith<$Res> {
  factory $MultimediaEventCopyWith(
          MultimediaEvent value, $Res Function(MultimediaEvent) then) =
      _$MultimediaEventCopyWithImpl<$Res, MultimediaEvent>;
}

/// @nodoc
class _$MultimediaEventCopyWithImpl<$Res, $Val extends MultimediaEvent>
    implements $MultimediaEventCopyWith<$Res> {
  _$MultimediaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultimediaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchMultimediasImplCopyWith<$Res> {
  factory _$$FetchMultimediasImplCopyWith(_$FetchMultimediasImpl value,
          $Res Function(_$FetchMultimediasImpl) then) =
      __$$FetchMultimediasImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMultimediasImplCopyWithImpl<$Res>
    extends _$MultimediaEventCopyWithImpl<$Res, _$FetchMultimediasImpl>
    implements _$$FetchMultimediasImplCopyWith<$Res> {
  __$$FetchMultimediasImplCopyWithImpl(_$FetchMultimediasImpl _value,
      $Res Function(_$FetchMultimediasImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultimediaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMultimediasImpl implements FetchMultimedias {
  const _$FetchMultimediasImpl();

  @override
  String toString() {
    return 'MultimediaEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMultimediasImpl);
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
    required TResult Function(FetchMultimedias value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchMultimedias value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMultimedias value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchMultimedias implements MultimediaEvent {
  const factory FetchMultimedias() = _$FetchMultimediasImpl;
}

/// @nodoc
mixin _$MultimediaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> news) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> news)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultimediaInitial value) initial,
    required TResult Function(MultimediaLoading value) loading,
    required TResult Function(MultimediaLoaded value) loaded,
    required TResult Function(MultimediaError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultimediaInitial value)? initial,
    TResult? Function(MultimediaLoading value)? loading,
    TResult? Function(MultimediaLoaded value)? loaded,
    TResult? Function(MultimediaError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultimediaInitial value)? initial,
    TResult Function(MultimediaLoading value)? loading,
    TResult Function(MultimediaLoaded value)? loaded,
    TResult Function(MultimediaError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaStateCopyWith<$Res> {
  factory $MultimediaStateCopyWith(
          MultimediaState value, $Res Function(MultimediaState) then) =
      _$MultimediaStateCopyWithImpl<$Res, MultimediaState>;
}

/// @nodoc
class _$MultimediaStateCopyWithImpl<$Res, $Val extends MultimediaState>
    implements $MultimediaStateCopyWith<$Res> {
  _$MultimediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MultimediaInitialImplCopyWith<$Res> {
  factory _$$MultimediaInitialImplCopyWith(_$MultimediaInitialImpl value,
          $Res Function(_$MultimediaInitialImpl) then) =
      __$$MultimediaInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultimediaInitialImplCopyWithImpl<$Res>
    extends _$MultimediaStateCopyWithImpl<$Res, _$MultimediaInitialImpl>
    implements _$$MultimediaInitialImplCopyWith<$Res> {
  __$$MultimediaInitialImplCopyWithImpl(_$MultimediaInitialImpl _value,
      $Res Function(_$MultimediaInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MultimediaInitialImpl implements MultimediaInitial {
  const _$MultimediaInitialImpl();

  @override
  String toString() {
    return 'MultimediaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MultimediaInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> news) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> news)? loaded,
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
    required TResult Function(MultimediaInitial value) initial,
    required TResult Function(MultimediaLoading value) loading,
    required TResult Function(MultimediaLoaded value) loaded,
    required TResult Function(MultimediaError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultimediaInitial value)? initial,
    TResult? Function(MultimediaLoading value)? loading,
    TResult? Function(MultimediaLoaded value)? loaded,
    TResult? Function(MultimediaError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultimediaInitial value)? initial,
    TResult Function(MultimediaLoading value)? loading,
    TResult Function(MultimediaLoaded value)? loaded,
    TResult Function(MultimediaError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MultimediaInitial implements MultimediaState {
  const factory MultimediaInitial() = _$MultimediaInitialImpl;
}

/// @nodoc
abstract class _$$MultimediaLoadingImplCopyWith<$Res> {
  factory _$$MultimediaLoadingImplCopyWith(_$MultimediaLoadingImpl value,
          $Res Function(_$MultimediaLoadingImpl) then) =
      __$$MultimediaLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultimediaLoadingImplCopyWithImpl<$Res>
    extends _$MultimediaStateCopyWithImpl<$Res, _$MultimediaLoadingImpl>
    implements _$$MultimediaLoadingImplCopyWith<$Res> {
  __$$MultimediaLoadingImplCopyWithImpl(_$MultimediaLoadingImpl _value,
      $Res Function(_$MultimediaLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MultimediaLoadingImpl implements MultimediaLoading {
  const _$MultimediaLoadingImpl();

  @override
  String toString() {
    return 'MultimediaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MultimediaLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> news) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> news)? loaded,
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
    required TResult Function(MultimediaInitial value) initial,
    required TResult Function(MultimediaLoading value) loading,
    required TResult Function(MultimediaLoaded value) loaded,
    required TResult Function(MultimediaError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultimediaInitial value)? initial,
    TResult? Function(MultimediaLoading value)? loading,
    TResult? Function(MultimediaLoaded value)? loaded,
    TResult? Function(MultimediaError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultimediaInitial value)? initial,
    TResult Function(MultimediaLoading value)? loading,
    TResult Function(MultimediaLoaded value)? loaded,
    TResult Function(MultimediaError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MultimediaLoading implements MultimediaState {
  const factory MultimediaLoading() = _$MultimediaLoadingImpl;
}

/// @nodoc
abstract class _$$MultimediaLoadedImplCopyWith<$Res> {
  factory _$$MultimediaLoadedImplCopyWith(_$MultimediaLoadedImpl value,
          $Res Function(_$MultimediaLoadedImpl) then) =
      __$$MultimediaLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> news});
}

/// @nodoc
class __$$MultimediaLoadedImplCopyWithImpl<$Res>
    extends _$MultimediaStateCopyWithImpl<$Res, _$MultimediaLoadedImpl>
    implements _$$MultimediaLoadedImplCopyWith<$Res> {
  __$$MultimediaLoadedImplCopyWithImpl(_$MultimediaLoadedImpl _value,
      $Res Function(_$MultimediaLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$MultimediaLoadedImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$MultimediaLoadedImpl implements MultimediaLoaded {
  const _$MultimediaLoadedImpl(final List<CategoryNewsModel> news)
      : _news = news;

  final List<CategoryNewsModel> _news;
  @override
  List<CategoryNewsModel> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'MultimediaState.loaded(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultimediaLoadedImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultimediaLoadedImplCopyWith<_$MultimediaLoadedImpl> get copyWith =>
      __$$MultimediaLoadedImplCopyWithImpl<_$MultimediaLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> news) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultimediaInitial value) initial,
    required TResult Function(MultimediaLoading value) loading,
    required TResult Function(MultimediaLoaded value) loaded,
    required TResult Function(MultimediaError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultimediaInitial value)? initial,
    TResult? Function(MultimediaLoading value)? loading,
    TResult? Function(MultimediaLoaded value)? loaded,
    TResult? Function(MultimediaError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultimediaInitial value)? initial,
    TResult Function(MultimediaLoading value)? loading,
    TResult Function(MultimediaLoaded value)? loaded,
    TResult Function(MultimediaError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MultimediaLoaded implements MultimediaState {
  const factory MultimediaLoaded(final List<CategoryNewsModel> news) =
      _$MultimediaLoadedImpl;

  List<CategoryNewsModel> get news;

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultimediaLoadedImplCopyWith<_$MultimediaLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultimediaErrorImplCopyWith<$Res> {
  factory _$$MultimediaErrorImplCopyWith(_$MultimediaErrorImpl value,
          $Res Function(_$MultimediaErrorImpl) then) =
      __$$MultimediaErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MultimediaErrorImplCopyWithImpl<$Res>
    extends _$MultimediaStateCopyWithImpl<$Res, _$MultimediaErrorImpl>
    implements _$$MultimediaErrorImplCopyWith<$Res> {
  __$$MultimediaErrorImplCopyWithImpl(
      _$MultimediaErrorImpl _value, $Res Function(_$MultimediaErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MultimediaErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MultimediaErrorImpl implements MultimediaError {
  const _$MultimediaErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MultimediaState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultimediaErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultimediaErrorImplCopyWith<_$MultimediaErrorImpl> get copyWith =>
      __$$MultimediaErrorImplCopyWithImpl<_$MultimediaErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> news) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> news)? loaded,
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
    required TResult Function(MultimediaInitial value) initial,
    required TResult Function(MultimediaLoading value) loading,
    required TResult Function(MultimediaLoaded value) loaded,
    required TResult Function(MultimediaError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultimediaInitial value)? initial,
    TResult? Function(MultimediaLoading value)? loading,
    TResult? Function(MultimediaLoaded value)? loaded,
    TResult? Function(MultimediaError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultimediaInitial value)? initial,
    TResult Function(MultimediaLoading value)? loading,
    TResult Function(MultimediaLoaded value)? loaded,
    TResult Function(MultimediaError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MultimediaError implements MultimediaState {
  const factory MultimediaError(final String message) = _$MultimediaErrorImpl;

  String get message;

  /// Create a copy of MultimediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultimediaErrorImplCopyWith<_$MultimediaErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
