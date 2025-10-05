// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'what_happened_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WhatHappenedEvent {
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
    required TResult Function(FetchWhatHappenedEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWhatHappenedEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWhatHappenedEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhatHappenedEventCopyWith<$Res> {
  factory $WhatHappenedEventCopyWith(
          WhatHappenedEvent value, $Res Function(WhatHappenedEvent) then) =
      _$WhatHappenedEventCopyWithImpl<$Res, WhatHappenedEvent>;
}

/// @nodoc
class _$WhatHappenedEventCopyWithImpl<$Res, $Val extends WhatHappenedEvent>
    implements $WhatHappenedEventCopyWith<$Res> {
  _$WhatHappenedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhatHappenedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchWhatHappenedEventImplCopyWith<$Res> {
  factory _$$FetchWhatHappenedEventImplCopyWith(
          _$FetchWhatHappenedEventImpl value,
          $Res Function(_$FetchWhatHappenedEventImpl) then) =
      __$$FetchWhatHappenedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWhatHappenedEventImplCopyWithImpl<$Res>
    extends _$WhatHappenedEventCopyWithImpl<$Res, _$FetchWhatHappenedEventImpl>
    implements _$$FetchWhatHappenedEventImplCopyWith<$Res> {
  __$$FetchWhatHappenedEventImplCopyWithImpl(
      _$FetchWhatHappenedEventImpl _value,
      $Res Function(_$FetchWhatHappenedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhatHappenedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchWhatHappenedEventImpl implements FetchWhatHappenedEvent {
  const _$FetchWhatHappenedEventImpl();

  @override
  String toString() {
    return 'WhatHappenedEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWhatHappenedEventImpl);
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
    required TResult Function(FetchWhatHappenedEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchWhatHappenedEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchWhatHappenedEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchWhatHappenedEvent implements WhatHappenedEvent {
  const factory FetchWhatHappenedEvent() = _$FetchWhatHappenedEventImpl;
}

/// @nodoc
mixin _$WhatHappenedState {
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
    required TResult Function(WhatHappenedInitial value) initial,
    required TResult Function(WhatHappenedLoading value) loading,
    required TResult Function(WhatHappenedLoaded value) loaded,
    required TResult Function(WhatHappenedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhatHappenedInitial value)? initial,
    TResult? Function(WhatHappenedLoading value)? loading,
    TResult? Function(WhatHappenedLoaded value)? loaded,
    TResult? Function(WhatHappenedError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhatHappenedInitial value)? initial,
    TResult Function(WhatHappenedLoading value)? loading,
    TResult Function(WhatHappenedLoaded value)? loaded,
    TResult Function(WhatHappenedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhatHappenedStateCopyWith<$Res> {
  factory $WhatHappenedStateCopyWith(
          WhatHappenedState value, $Res Function(WhatHappenedState) then) =
      _$WhatHappenedStateCopyWithImpl<$Res, WhatHappenedState>;
}

/// @nodoc
class _$WhatHappenedStateCopyWithImpl<$Res, $Val extends WhatHappenedState>
    implements $WhatHappenedStateCopyWith<$Res> {
  _$WhatHappenedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WhatHappenedInitialImplCopyWith<$Res> {
  factory _$$WhatHappenedInitialImplCopyWith(_$WhatHappenedInitialImpl value,
          $Res Function(_$WhatHappenedInitialImpl) then) =
      __$$WhatHappenedInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WhatHappenedInitialImplCopyWithImpl<$Res>
    extends _$WhatHappenedStateCopyWithImpl<$Res, _$WhatHappenedInitialImpl>
    implements _$$WhatHappenedInitialImplCopyWith<$Res> {
  __$$WhatHappenedInitialImplCopyWithImpl(_$WhatHappenedInitialImpl _value,
      $Res Function(_$WhatHappenedInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WhatHappenedInitialImpl implements WhatHappenedInitial {
  const _$WhatHappenedInitialImpl();

  @override
  String toString() {
    return 'WhatHappenedState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhatHappenedInitialImpl);
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
    required TResult Function(WhatHappenedInitial value) initial,
    required TResult Function(WhatHappenedLoading value) loading,
    required TResult Function(WhatHappenedLoaded value) loaded,
    required TResult Function(WhatHappenedError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhatHappenedInitial value)? initial,
    TResult? Function(WhatHappenedLoading value)? loading,
    TResult? Function(WhatHappenedLoaded value)? loaded,
    TResult? Function(WhatHappenedError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhatHappenedInitial value)? initial,
    TResult Function(WhatHappenedLoading value)? loading,
    TResult Function(WhatHappenedLoaded value)? loaded,
    TResult Function(WhatHappenedError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WhatHappenedInitial implements WhatHappenedState {
  const factory WhatHappenedInitial() = _$WhatHappenedInitialImpl;
}

/// @nodoc
abstract class _$$WhatHappenedLoadingImplCopyWith<$Res> {
  factory _$$WhatHappenedLoadingImplCopyWith(_$WhatHappenedLoadingImpl value,
          $Res Function(_$WhatHappenedLoadingImpl) then) =
      __$$WhatHappenedLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WhatHappenedLoadingImplCopyWithImpl<$Res>
    extends _$WhatHappenedStateCopyWithImpl<$Res, _$WhatHappenedLoadingImpl>
    implements _$$WhatHappenedLoadingImplCopyWith<$Res> {
  __$$WhatHappenedLoadingImplCopyWithImpl(_$WhatHappenedLoadingImpl _value,
      $Res Function(_$WhatHappenedLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WhatHappenedLoadingImpl implements WhatHappenedLoading {
  const _$WhatHappenedLoadingImpl();

  @override
  String toString() {
    return 'WhatHappenedState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhatHappenedLoadingImpl);
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
    required TResult Function(WhatHappenedInitial value) initial,
    required TResult Function(WhatHappenedLoading value) loading,
    required TResult Function(WhatHappenedLoaded value) loaded,
    required TResult Function(WhatHappenedError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhatHappenedInitial value)? initial,
    TResult? Function(WhatHappenedLoading value)? loading,
    TResult? Function(WhatHappenedLoaded value)? loaded,
    TResult? Function(WhatHappenedError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhatHappenedInitial value)? initial,
    TResult Function(WhatHappenedLoading value)? loading,
    TResult Function(WhatHappenedLoaded value)? loaded,
    TResult Function(WhatHappenedError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WhatHappenedLoading implements WhatHappenedState {
  const factory WhatHappenedLoading() = _$WhatHappenedLoadingImpl;
}

/// @nodoc
abstract class _$$WhatHappenedLoadedImplCopyWith<$Res> {
  factory _$$WhatHappenedLoadedImplCopyWith(_$WhatHappenedLoadedImpl value,
          $Res Function(_$WhatHappenedLoadedImpl) then) =
      __$$WhatHappenedLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> news});
}

/// @nodoc
class __$$WhatHappenedLoadedImplCopyWithImpl<$Res>
    extends _$WhatHappenedStateCopyWithImpl<$Res, _$WhatHappenedLoadedImpl>
    implements _$$WhatHappenedLoadedImplCopyWith<$Res> {
  __$$WhatHappenedLoadedImplCopyWithImpl(_$WhatHappenedLoadedImpl _value,
      $Res Function(_$WhatHappenedLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$WhatHappenedLoadedImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$WhatHappenedLoadedImpl implements WhatHappenedLoaded {
  const _$WhatHappenedLoadedImpl(final List<CategoryNewsModel> news)
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
    return 'WhatHappenedState.loaded(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhatHappenedLoadedImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhatHappenedLoadedImplCopyWith<_$WhatHappenedLoadedImpl> get copyWith =>
      __$$WhatHappenedLoadedImplCopyWithImpl<_$WhatHappenedLoadedImpl>(
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
    required TResult Function(WhatHappenedInitial value) initial,
    required TResult Function(WhatHappenedLoading value) loading,
    required TResult Function(WhatHappenedLoaded value) loaded,
    required TResult Function(WhatHappenedError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhatHappenedInitial value)? initial,
    TResult? Function(WhatHappenedLoading value)? loading,
    TResult? Function(WhatHappenedLoaded value)? loaded,
    TResult? Function(WhatHappenedError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhatHappenedInitial value)? initial,
    TResult Function(WhatHappenedLoading value)? loading,
    TResult Function(WhatHappenedLoaded value)? loaded,
    TResult Function(WhatHappenedError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WhatHappenedLoaded implements WhatHappenedState {
  const factory WhatHappenedLoaded(final List<CategoryNewsModel> news) =
      _$WhatHappenedLoadedImpl;

  List<CategoryNewsModel> get news;

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhatHappenedLoadedImplCopyWith<_$WhatHappenedLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhatHappenedErrorImplCopyWith<$Res> {
  factory _$$WhatHappenedErrorImplCopyWith(_$WhatHappenedErrorImpl value,
          $Res Function(_$WhatHappenedErrorImpl) then) =
      __$$WhatHappenedErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WhatHappenedErrorImplCopyWithImpl<$Res>
    extends _$WhatHappenedStateCopyWithImpl<$Res, _$WhatHappenedErrorImpl>
    implements _$$WhatHappenedErrorImplCopyWith<$Res> {
  __$$WhatHappenedErrorImplCopyWithImpl(_$WhatHappenedErrorImpl _value,
      $Res Function(_$WhatHappenedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WhatHappenedErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WhatHappenedErrorImpl implements WhatHappenedError {
  const _$WhatHappenedErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WhatHappenedState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhatHappenedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhatHappenedErrorImplCopyWith<_$WhatHappenedErrorImpl> get copyWith =>
      __$$WhatHappenedErrorImplCopyWithImpl<_$WhatHappenedErrorImpl>(
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
    required TResult Function(WhatHappenedInitial value) initial,
    required TResult Function(WhatHappenedLoading value) loading,
    required TResult Function(WhatHappenedLoaded value) loaded,
    required TResult Function(WhatHappenedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WhatHappenedInitial value)? initial,
    TResult? Function(WhatHappenedLoading value)? loading,
    TResult? Function(WhatHappenedLoaded value)? loaded,
    TResult? Function(WhatHappenedError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WhatHappenedInitial value)? initial,
    TResult Function(WhatHappenedLoading value)? loading,
    TResult Function(WhatHappenedLoaded value)? loaded,
    TResult Function(WhatHappenedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WhatHappenedError implements WhatHappenedState {
  const factory WhatHappenedError(final String message) =
      _$WhatHappenedErrorImpl;

  String get message;

  /// Create a copy of WhatHappenedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhatHappenedErrorImplCopyWith<_$WhatHappenedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
