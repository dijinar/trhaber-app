// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headline_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeadlineEvent {
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
    required TResult Function(FetchHeadlineEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHeadlineEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHeadlineEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadlineEventCopyWith<$Res> {
  factory $HeadlineEventCopyWith(
          HeadlineEvent value, $Res Function(HeadlineEvent) then) =
      _$HeadlineEventCopyWithImpl<$Res, HeadlineEvent>;
}

/// @nodoc
class _$HeadlineEventCopyWithImpl<$Res, $Val extends HeadlineEvent>
    implements $HeadlineEventCopyWith<$Res> {
  _$HeadlineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeadlineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchHeadlineEventImplCopyWith<$Res> {
  factory _$$FetchHeadlineEventImplCopyWith(_$FetchHeadlineEventImpl value,
          $Res Function(_$FetchHeadlineEventImpl) then) =
      __$$FetchHeadlineEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHeadlineEventImplCopyWithImpl<$Res>
    extends _$HeadlineEventCopyWithImpl<$Res, _$FetchHeadlineEventImpl>
    implements _$$FetchHeadlineEventImplCopyWith<$Res> {
  __$$FetchHeadlineEventImplCopyWithImpl(_$FetchHeadlineEventImpl _value,
      $Res Function(_$FetchHeadlineEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchHeadlineEventImpl implements FetchHeadlineEvent {
  const _$FetchHeadlineEventImpl();

  @override
  String toString() {
    return 'HeadlineEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHeadlineEventImpl);
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
    required TResult Function(FetchHeadlineEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHeadlineEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHeadlineEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchHeadlineEvent implements HeadlineEvent {
  const factory FetchHeadlineEvent() = _$FetchHeadlineEventImpl;
}

/// @nodoc
mixin _$HeadlineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HeadlineModel> headlines) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HeadlineModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HeadlineModel> headlines)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeadlineInitial value) initial,
    required TResult Function(HeadlineLoading value) loading,
    required TResult Function(HeadlineLoaded value) loaded,
    required TResult Function(HeadlineError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeadlineInitial value)? initial,
    TResult? Function(HeadlineLoading value)? loading,
    TResult? Function(HeadlineLoaded value)? loaded,
    TResult? Function(HeadlineError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeadlineInitial value)? initial,
    TResult Function(HeadlineLoading value)? loading,
    TResult Function(HeadlineLoaded value)? loaded,
    TResult Function(HeadlineError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadlineStateCopyWith<$Res> {
  factory $HeadlineStateCopyWith(
          HeadlineState value, $Res Function(HeadlineState) then) =
      _$HeadlineStateCopyWithImpl<$Res, HeadlineState>;
}

/// @nodoc
class _$HeadlineStateCopyWithImpl<$Res, $Val extends HeadlineState>
    implements $HeadlineStateCopyWith<$Res> {
  _$HeadlineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HeadlineInitialImplCopyWith<$Res> {
  factory _$$HeadlineInitialImplCopyWith(_$HeadlineInitialImpl value,
          $Res Function(_$HeadlineInitialImpl) then) =
      __$$HeadlineInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadlineInitialImplCopyWithImpl<$Res>
    extends _$HeadlineStateCopyWithImpl<$Res, _$HeadlineInitialImpl>
    implements _$$HeadlineInitialImplCopyWith<$Res> {
  __$$HeadlineInitialImplCopyWithImpl(
      _$HeadlineInitialImpl _value, $Res Function(_$HeadlineInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadlineInitialImpl implements HeadlineInitial {
  const _$HeadlineInitialImpl();

  @override
  String toString() {
    return 'HeadlineState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadlineInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HeadlineModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HeadlineModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HeadlineModel> headlines)? loaded,
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
    required TResult Function(HeadlineInitial value) initial,
    required TResult Function(HeadlineLoading value) loading,
    required TResult Function(HeadlineLoaded value) loaded,
    required TResult Function(HeadlineError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeadlineInitial value)? initial,
    TResult? Function(HeadlineLoading value)? loading,
    TResult? Function(HeadlineLoaded value)? loaded,
    TResult? Function(HeadlineError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeadlineInitial value)? initial,
    TResult Function(HeadlineLoading value)? loading,
    TResult Function(HeadlineLoaded value)? loaded,
    TResult Function(HeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HeadlineInitial implements HeadlineState {
  const factory HeadlineInitial() = _$HeadlineInitialImpl;
}

/// @nodoc
abstract class _$$HeadlineLoadingImplCopyWith<$Res> {
  factory _$$HeadlineLoadingImplCopyWith(_$HeadlineLoadingImpl value,
          $Res Function(_$HeadlineLoadingImpl) then) =
      __$$HeadlineLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadlineLoadingImplCopyWithImpl<$Res>
    extends _$HeadlineStateCopyWithImpl<$Res, _$HeadlineLoadingImpl>
    implements _$$HeadlineLoadingImplCopyWith<$Res> {
  __$$HeadlineLoadingImplCopyWithImpl(
      _$HeadlineLoadingImpl _value, $Res Function(_$HeadlineLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadlineLoadingImpl implements HeadlineLoading {
  const _$HeadlineLoadingImpl();

  @override
  String toString() {
    return 'HeadlineState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadlineLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HeadlineModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HeadlineModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HeadlineModel> headlines)? loaded,
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
    required TResult Function(HeadlineInitial value) initial,
    required TResult Function(HeadlineLoading value) loading,
    required TResult Function(HeadlineLoaded value) loaded,
    required TResult Function(HeadlineError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeadlineInitial value)? initial,
    TResult? Function(HeadlineLoading value)? loading,
    TResult? Function(HeadlineLoaded value)? loaded,
    TResult? Function(HeadlineError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeadlineInitial value)? initial,
    TResult Function(HeadlineLoading value)? loading,
    TResult Function(HeadlineLoaded value)? loaded,
    TResult Function(HeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HeadlineLoading implements HeadlineState {
  const factory HeadlineLoading() = _$HeadlineLoadingImpl;
}

/// @nodoc
abstract class _$$HeadlineLoadedImplCopyWith<$Res> {
  factory _$$HeadlineLoadedImplCopyWith(_$HeadlineLoadedImpl value,
          $Res Function(_$HeadlineLoadedImpl) then) =
      __$$HeadlineLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HeadlineModel> headlines});
}

/// @nodoc
class __$$HeadlineLoadedImplCopyWithImpl<$Res>
    extends _$HeadlineStateCopyWithImpl<$Res, _$HeadlineLoadedImpl>
    implements _$$HeadlineLoadedImplCopyWith<$Res> {
  __$$HeadlineLoadedImplCopyWithImpl(
      _$HeadlineLoadedImpl _value, $Res Function(_$HeadlineLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headlines = null,
  }) {
    return _then(_$HeadlineLoadedImpl(
      null == headlines
          ? _value._headlines
          : headlines // ignore: cast_nullable_to_non_nullable
              as List<HeadlineModel>,
    ));
  }
}

/// @nodoc

class _$HeadlineLoadedImpl implements HeadlineLoaded {
  const _$HeadlineLoadedImpl(final List<HeadlineModel> headlines)
      : _headlines = headlines;

  final List<HeadlineModel> _headlines;
  @override
  List<HeadlineModel> get headlines {
    if (_headlines is EqualUnmodifiableListView) return _headlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headlines);
  }

  @override
  String toString() {
    return 'HeadlineState.loaded(headlines: $headlines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadlineLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._headlines, _headlines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headlines));

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadlineLoadedImplCopyWith<_$HeadlineLoadedImpl> get copyWith =>
      __$$HeadlineLoadedImplCopyWithImpl<_$HeadlineLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HeadlineModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(headlines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HeadlineModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(headlines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HeadlineModel> headlines)? loaded,
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
    required TResult Function(HeadlineInitial value) initial,
    required TResult Function(HeadlineLoading value) loading,
    required TResult Function(HeadlineLoaded value) loaded,
    required TResult Function(HeadlineError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeadlineInitial value)? initial,
    TResult? Function(HeadlineLoading value)? loading,
    TResult? Function(HeadlineLoaded value)? loaded,
    TResult? Function(HeadlineError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeadlineInitial value)? initial,
    TResult Function(HeadlineLoading value)? loading,
    TResult Function(HeadlineLoaded value)? loaded,
    TResult Function(HeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HeadlineLoaded implements HeadlineState {
  const factory HeadlineLoaded(final List<HeadlineModel> headlines) =
      _$HeadlineLoadedImpl;

  List<HeadlineModel> get headlines;

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeadlineLoadedImplCopyWith<_$HeadlineLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeadlineErrorImplCopyWith<$Res> {
  factory _$$HeadlineErrorImplCopyWith(
          _$HeadlineErrorImpl value, $Res Function(_$HeadlineErrorImpl) then) =
      __$$HeadlineErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HeadlineErrorImplCopyWithImpl<$Res>
    extends _$HeadlineStateCopyWithImpl<$Res, _$HeadlineErrorImpl>
    implements _$$HeadlineErrorImplCopyWith<$Res> {
  __$$HeadlineErrorImplCopyWithImpl(
      _$HeadlineErrorImpl _value, $Res Function(_$HeadlineErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HeadlineErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HeadlineErrorImpl implements HeadlineError {
  const _$HeadlineErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HeadlineState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadlineErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadlineErrorImplCopyWith<_$HeadlineErrorImpl> get copyWith =>
      __$$HeadlineErrorImplCopyWithImpl<_$HeadlineErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HeadlineModel> headlines) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HeadlineModel> headlines)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HeadlineModel> headlines)? loaded,
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
    required TResult Function(HeadlineInitial value) initial,
    required TResult Function(HeadlineLoading value) loading,
    required TResult Function(HeadlineLoaded value) loaded,
    required TResult Function(HeadlineError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeadlineInitial value)? initial,
    TResult? Function(HeadlineLoading value)? loading,
    TResult? Function(HeadlineLoaded value)? loaded,
    TResult? Function(HeadlineError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeadlineInitial value)? initial,
    TResult Function(HeadlineLoading value)? loading,
    TResult Function(HeadlineLoaded value)? loaded,
    TResult Function(HeadlineError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HeadlineError implements HeadlineState {
  const factory HeadlineError(final String message) = _$HeadlineErrorImpl;

  String get message;

  /// Create a copy of HeadlineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeadlineErrorImplCopyWith<_$HeadlineErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
