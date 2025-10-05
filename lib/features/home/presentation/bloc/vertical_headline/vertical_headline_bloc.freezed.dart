// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vertical_headline_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerticalHeadlineEvent {
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
    required TResult Function(FetchVerticalHeadlineEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchVerticalHeadlineEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVerticalHeadlineEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticalHeadlineEventCopyWith<$Res> {
  factory $VerticalHeadlineEventCopyWith(VerticalHeadlineEvent value,
          $Res Function(VerticalHeadlineEvent) then) =
      _$VerticalHeadlineEventCopyWithImpl<$Res, VerticalHeadlineEvent>;
}

/// @nodoc
class _$VerticalHeadlineEventCopyWithImpl<$Res,
        $Val extends VerticalHeadlineEvent>
    implements $VerticalHeadlineEventCopyWith<$Res> {
  _$VerticalHeadlineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerticalHeadlineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchVerticalHeadlineEventImplCopyWith<$Res> {
  factory _$$FetchVerticalHeadlineEventImplCopyWith(
          _$FetchVerticalHeadlineEventImpl value,
          $Res Function(_$FetchVerticalHeadlineEventImpl) then) =
      __$$FetchVerticalHeadlineEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchVerticalHeadlineEventImplCopyWithImpl<$Res>
    extends _$VerticalHeadlineEventCopyWithImpl<$Res,
        _$FetchVerticalHeadlineEventImpl>
    implements _$$FetchVerticalHeadlineEventImplCopyWith<$Res> {
  __$$FetchVerticalHeadlineEventImplCopyWithImpl(
      _$FetchVerticalHeadlineEventImpl _value,
      $Res Function(_$FetchVerticalHeadlineEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerticalHeadlineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchVerticalHeadlineEventImpl implements FetchVerticalHeadlineEvent {
  const _$FetchVerticalHeadlineEventImpl();

  @override
  String toString() {
    return 'VerticalHeadlineEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchVerticalHeadlineEventImpl);
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
    required TResult Function(FetchVerticalHeadlineEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchVerticalHeadlineEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVerticalHeadlineEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchVerticalHeadlineEvent implements VerticalHeadlineEvent {
  const factory FetchVerticalHeadlineEvent() = _$FetchVerticalHeadlineEventImpl;
}

/// @nodoc
mixin _$VerticalHeadlineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> headlines) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> headlines)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerticalHeadlineInitial value) initial,
    required TResult Function(VerticalHeadlineLoading value) loading,
    required TResult Function(VerticalHeadlineLoaded value) loaded,
    required TResult Function(VerticalHeadlineError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalHeadlineInitial value)? initial,
    TResult? Function(VerticalHeadlineLoading value)? loading,
    TResult? Function(VerticalHeadlineLoaded value)? loaded,
    TResult? Function(VerticalHeadlineError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalHeadlineInitial value)? initial,
    TResult Function(VerticalHeadlineLoading value)? loading,
    TResult Function(VerticalHeadlineLoaded value)? loaded,
    TResult Function(VerticalHeadlineError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticalHeadlineStateCopyWith<$Res> {
  factory $VerticalHeadlineStateCopyWith(VerticalHeadlineState value,
          $Res Function(VerticalHeadlineState) then) =
      _$VerticalHeadlineStateCopyWithImpl<$Res, VerticalHeadlineState>;
}

/// @nodoc
class _$VerticalHeadlineStateCopyWithImpl<$Res,
        $Val extends VerticalHeadlineState>
    implements $VerticalHeadlineStateCopyWith<$Res> {
  _$VerticalHeadlineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VerticalHeadlineInitialImplCopyWith<$Res> {
  factory _$$VerticalHeadlineInitialImplCopyWith(
          _$VerticalHeadlineInitialImpl value,
          $Res Function(_$VerticalHeadlineInitialImpl) then) =
      __$$VerticalHeadlineInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerticalHeadlineInitialImplCopyWithImpl<$Res>
    extends _$VerticalHeadlineStateCopyWithImpl<$Res,
        _$VerticalHeadlineInitialImpl>
    implements _$$VerticalHeadlineInitialImplCopyWith<$Res> {
  __$$VerticalHeadlineInitialImplCopyWithImpl(
      _$VerticalHeadlineInitialImpl _value,
      $Res Function(_$VerticalHeadlineInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerticalHeadlineInitialImpl implements VerticalHeadlineInitial {
  const _$VerticalHeadlineInitialImpl();

  @override
  String toString() {
    return 'VerticalHeadlineState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalHeadlineInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> headlines)? loaded,
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
    required TResult Function(VerticalHeadlineInitial value) initial,
    required TResult Function(VerticalHeadlineLoading value) loading,
    required TResult Function(VerticalHeadlineLoaded value) loaded,
    required TResult Function(VerticalHeadlineError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalHeadlineInitial value)? initial,
    TResult? Function(VerticalHeadlineLoading value)? loading,
    TResult? Function(VerticalHeadlineLoaded value)? loaded,
    TResult? Function(VerticalHeadlineError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalHeadlineInitial value)? initial,
    TResult Function(VerticalHeadlineLoading value)? loading,
    TResult Function(VerticalHeadlineLoaded value)? loaded,
    TResult Function(VerticalHeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VerticalHeadlineInitial implements VerticalHeadlineState {
  const factory VerticalHeadlineInitial() = _$VerticalHeadlineInitialImpl;
}

/// @nodoc
abstract class _$$VerticalHeadlineLoadingImplCopyWith<$Res> {
  factory _$$VerticalHeadlineLoadingImplCopyWith(
          _$VerticalHeadlineLoadingImpl value,
          $Res Function(_$VerticalHeadlineLoadingImpl) then) =
      __$$VerticalHeadlineLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerticalHeadlineLoadingImplCopyWithImpl<$Res>
    extends _$VerticalHeadlineStateCopyWithImpl<$Res,
        _$VerticalHeadlineLoadingImpl>
    implements _$$VerticalHeadlineLoadingImplCopyWith<$Res> {
  __$$VerticalHeadlineLoadingImplCopyWithImpl(
      _$VerticalHeadlineLoadingImpl _value,
      $Res Function(_$VerticalHeadlineLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerticalHeadlineLoadingImpl implements VerticalHeadlineLoading {
  const _$VerticalHeadlineLoadingImpl();

  @override
  String toString() {
    return 'VerticalHeadlineState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalHeadlineLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> headlines)? loaded,
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
    required TResult Function(VerticalHeadlineInitial value) initial,
    required TResult Function(VerticalHeadlineLoading value) loading,
    required TResult Function(VerticalHeadlineLoaded value) loaded,
    required TResult Function(VerticalHeadlineError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalHeadlineInitial value)? initial,
    TResult? Function(VerticalHeadlineLoading value)? loading,
    TResult? Function(VerticalHeadlineLoaded value)? loaded,
    TResult? Function(VerticalHeadlineError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalHeadlineInitial value)? initial,
    TResult Function(VerticalHeadlineLoading value)? loading,
    TResult Function(VerticalHeadlineLoaded value)? loaded,
    TResult Function(VerticalHeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerticalHeadlineLoading implements VerticalHeadlineState {
  const factory VerticalHeadlineLoading() = _$VerticalHeadlineLoadingImpl;
}

/// @nodoc
abstract class _$$VerticalHeadlineLoadedImplCopyWith<$Res> {
  factory _$$VerticalHeadlineLoadedImplCopyWith(
          _$VerticalHeadlineLoadedImpl value,
          $Res Function(_$VerticalHeadlineLoadedImpl) then) =
      __$$VerticalHeadlineLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> headlines});
}

/// @nodoc
class __$$VerticalHeadlineLoadedImplCopyWithImpl<$Res>
    extends _$VerticalHeadlineStateCopyWithImpl<$Res,
        _$VerticalHeadlineLoadedImpl>
    implements _$$VerticalHeadlineLoadedImplCopyWith<$Res> {
  __$$VerticalHeadlineLoadedImplCopyWithImpl(
      _$VerticalHeadlineLoadedImpl _value,
      $Res Function(_$VerticalHeadlineLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headlines = null,
  }) {
    return _then(_$VerticalHeadlineLoadedImpl(
      null == headlines
          ? _value._headlines
          : headlines // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$VerticalHeadlineLoadedImpl implements VerticalHeadlineLoaded {
  const _$VerticalHeadlineLoadedImpl(final List<CategoryNewsModel> headlines)
      : _headlines = headlines;

  final List<CategoryNewsModel> _headlines;
  @override
  List<CategoryNewsModel> get headlines {
    if (_headlines is EqualUnmodifiableListView) return _headlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headlines);
  }

  @override
  String toString() {
    return 'VerticalHeadlineState.loaded(headlines: $headlines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalHeadlineLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._headlines, _headlines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headlines));

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerticalHeadlineLoadedImplCopyWith<_$VerticalHeadlineLoadedImpl>
      get copyWith => __$$VerticalHeadlineLoadedImplCopyWithImpl<
          _$VerticalHeadlineLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(headlines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(headlines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> headlines)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(headlines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerticalHeadlineInitial value) initial,
    required TResult Function(VerticalHeadlineLoading value) loading,
    required TResult Function(VerticalHeadlineLoaded value) loaded,
    required TResult Function(VerticalHeadlineError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalHeadlineInitial value)? initial,
    TResult? Function(VerticalHeadlineLoading value)? loading,
    TResult? Function(VerticalHeadlineLoaded value)? loaded,
    TResult? Function(VerticalHeadlineError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalHeadlineInitial value)? initial,
    TResult Function(VerticalHeadlineLoading value)? loading,
    TResult Function(VerticalHeadlineLoaded value)? loaded,
    TResult Function(VerticalHeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VerticalHeadlineLoaded implements VerticalHeadlineState {
  const factory VerticalHeadlineLoaded(
      final List<CategoryNewsModel> headlines) = _$VerticalHeadlineLoadedImpl;

  List<CategoryNewsModel> get headlines;

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerticalHeadlineLoadedImplCopyWith<_$VerticalHeadlineLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerticalHeadlineErrorImplCopyWith<$Res> {
  factory _$$VerticalHeadlineErrorImplCopyWith(
          _$VerticalHeadlineErrorImpl value,
          $Res Function(_$VerticalHeadlineErrorImpl) then) =
      __$$VerticalHeadlineErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VerticalHeadlineErrorImplCopyWithImpl<$Res>
    extends _$VerticalHeadlineStateCopyWithImpl<$Res,
        _$VerticalHeadlineErrorImpl>
    implements _$$VerticalHeadlineErrorImplCopyWith<$Res> {
  __$$VerticalHeadlineErrorImplCopyWithImpl(_$VerticalHeadlineErrorImpl _value,
      $Res Function(_$VerticalHeadlineErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$VerticalHeadlineErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerticalHeadlineErrorImpl implements VerticalHeadlineError {
  const _$VerticalHeadlineErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VerticalHeadlineState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalHeadlineErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerticalHeadlineErrorImplCopyWith<_$VerticalHeadlineErrorImpl>
      get copyWith => __$$VerticalHeadlineErrorImplCopyWithImpl<
          _$VerticalHeadlineErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryNewsModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryNewsModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryNewsModel> headlines)? loaded,
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
    required TResult Function(VerticalHeadlineInitial value) initial,
    required TResult Function(VerticalHeadlineLoading value) loading,
    required TResult Function(VerticalHeadlineLoaded value) loaded,
    required TResult Function(VerticalHeadlineError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalHeadlineInitial value)? initial,
    TResult? Function(VerticalHeadlineLoading value)? loading,
    TResult? Function(VerticalHeadlineLoaded value)? loaded,
    TResult? Function(VerticalHeadlineError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalHeadlineInitial value)? initial,
    TResult Function(VerticalHeadlineLoading value)? loading,
    TResult Function(VerticalHeadlineLoaded value)? loaded,
    TResult Function(VerticalHeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VerticalHeadlineError implements VerticalHeadlineState {
  const factory VerticalHeadlineError(final String message) =
      _$VerticalHeadlineErrorImpl;

  String get message;

  /// Create a copy of VerticalHeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerticalHeadlineErrorImplCopyWith<_$VerticalHeadlineErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
