// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FixtureEvent {
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
    required TResult Function(FetchFixtures value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFixtures value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFixtures value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureEventCopyWith<$Res> {
  factory $FixtureEventCopyWith(
          FixtureEvent value, $Res Function(FixtureEvent) then) =
      _$FixtureEventCopyWithImpl<$Res, FixtureEvent>;
}

/// @nodoc
class _$FixtureEventCopyWithImpl<$Res, $Val extends FixtureEvent>
    implements $FixtureEventCopyWith<$Res> {
  _$FixtureEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixtureEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchFixturesImplCopyWith<$Res> {
  factory _$$FetchFixturesImplCopyWith(
          _$FetchFixturesImpl value, $Res Function(_$FetchFixturesImpl) then) =
      __$$FetchFixturesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFixturesImplCopyWithImpl<$Res>
    extends _$FixtureEventCopyWithImpl<$Res, _$FetchFixturesImpl>
    implements _$$FetchFixturesImplCopyWith<$Res> {
  __$$FetchFixturesImplCopyWithImpl(
      _$FetchFixturesImpl _value, $Res Function(_$FetchFixturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixtureEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFixturesImpl implements FetchFixtures {
  const _$FetchFixturesImpl();

  @override
  String toString() {
    return 'FixtureEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFixturesImpl);
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
    required TResult Function(FetchFixtures value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFixtures value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFixtures value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchFixtures implements FixtureEvent {
  const factory FetchFixtures() = _$FetchFixturesImpl;
}

/// @nodoc
mixin _$FixtureState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FixtureModel> fixtures) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FixtureModel> fixtures)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FixtureModel> fixtures)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixtureInitial value) initial,
    required TResult Function(FixtureLoading value) loading,
    required TResult Function(FixtureLoaded value) loaded,
    required TResult Function(FixtureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixtureInitial value)? initial,
    TResult? Function(FixtureLoading value)? loading,
    TResult? Function(FixtureLoaded value)? loaded,
    TResult? Function(FixtureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixtureInitial value)? initial,
    TResult Function(FixtureLoading value)? loading,
    TResult Function(FixtureLoaded value)? loaded,
    TResult Function(FixtureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureStateCopyWith<$Res> {
  factory $FixtureStateCopyWith(
          FixtureState value, $Res Function(FixtureState) then) =
      _$FixtureStateCopyWithImpl<$Res, FixtureState>;
}

/// @nodoc
class _$FixtureStateCopyWithImpl<$Res, $Val extends FixtureState>
    implements $FixtureStateCopyWith<$Res> {
  _$FixtureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FixtureInitialImplCopyWith<$Res> {
  factory _$$FixtureInitialImplCopyWith(_$FixtureInitialImpl value,
          $Res Function(_$FixtureInitialImpl) then) =
      __$$FixtureInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FixtureInitialImplCopyWithImpl<$Res>
    extends _$FixtureStateCopyWithImpl<$Res, _$FixtureInitialImpl>
    implements _$$FixtureInitialImplCopyWith<$Res> {
  __$$FixtureInitialImplCopyWithImpl(
      _$FixtureInitialImpl _value, $Res Function(_$FixtureInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FixtureInitialImpl implements FixtureInitial {
  const _$FixtureInitialImpl();

  @override
  String toString() {
    return 'FixtureState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FixtureInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FixtureModel> fixtures) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FixtureModel> fixtures)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FixtureModel> fixtures)? loaded,
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
    required TResult Function(FixtureInitial value) initial,
    required TResult Function(FixtureLoading value) loading,
    required TResult Function(FixtureLoaded value) loaded,
    required TResult Function(FixtureError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixtureInitial value)? initial,
    TResult? Function(FixtureLoading value)? loading,
    TResult? Function(FixtureLoaded value)? loaded,
    TResult? Function(FixtureError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixtureInitial value)? initial,
    TResult Function(FixtureLoading value)? loading,
    TResult Function(FixtureLoaded value)? loaded,
    TResult Function(FixtureError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FixtureInitial implements FixtureState {
  const factory FixtureInitial() = _$FixtureInitialImpl;
}

/// @nodoc
abstract class _$$FixtureLoadingImplCopyWith<$Res> {
  factory _$$FixtureLoadingImplCopyWith(_$FixtureLoadingImpl value,
          $Res Function(_$FixtureLoadingImpl) then) =
      __$$FixtureLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FixtureLoadingImplCopyWithImpl<$Res>
    extends _$FixtureStateCopyWithImpl<$Res, _$FixtureLoadingImpl>
    implements _$$FixtureLoadingImplCopyWith<$Res> {
  __$$FixtureLoadingImplCopyWithImpl(
      _$FixtureLoadingImpl _value, $Res Function(_$FixtureLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FixtureLoadingImpl implements FixtureLoading {
  const _$FixtureLoadingImpl();

  @override
  String toString() {
    return 'FixtureState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FixtureLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FixtureModel> fixtures) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FixtureModel> fixtures)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FixtureModel> fixtures)? loaded,
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
    required TResult Function(FixtureInitial value) initial,
    required TResult Function(FixtureLoading value) loading,
    required TResult Function(FixtureLoaded value) loaded,
    required TResult Function(FixtureError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixtureInitial value)? initial,
    TResult? Function(FixtureLoading value)? loading,
    TResult? Function(FixtureLoaded value)? loaded,
    TResult? Function(FixtureError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixtureInitial value)? initial,
    TResult Function(FixtureLoading value)? loading,
    TResult Function(FixtureLoaded value)? loaded,
    TResult Function(FixtureError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FixtureLoading implements FixtureState {
  const factory FixtureLoading() = _$FixtureLoadingImpl;
}

/// @nodoc
abstract class _$$FixtureLoadedImplCopyWith<$Res> {
  factory _$$FixtureLoadedImplCopyWith(
          _$FixtureLoadedImpl value, $Res Function(_$FixtureLoadedImpl) then) =
      __$$FixtureLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FixtureModel> fixtures});
}

/// @nodoc
class __$$FixtureLoadedImplCopyWithImpl<$Res>
    extends _$FixtureStateCopyWithImpl<$Res, _$FixtureLoadedImpl>
    implements _$$FixtureLoadedImplCopyWith<$Res> {
  __$$FixtureLoadedImplCopyWithImpl(
      _$FixtureLoadedImpl _value, $Res Function(_$FixtureLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = null,
  }) {
    return _then(_$FixtureLoadedImpl(
      null == fixtures
          ? _value._fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as List<FixtureModel>,
    ));
  }
}

/// @nodoc

class _$FixtureLoadedImpl implements FixtureLoaded {
  const _$FixtureLoadedImpl(final List<FixtureModel> fixtures)
      : _fixtures = fixtures;

  final List<FixtureModel> _fixtures;
  @override
  List<FixtureModel> get fixtures {
    if (_fixtures is EqualUnmodifiableListView) return _fixtures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fixtures);
  }

  @override
  String toString() {
    return 'FixtureState.loaded(fixtures: $fixtures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixtureLoadedImpl &&
            const DeepCollectionEquality().equals(other._fixtures, _fixtures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fixtures));

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixtureLoadedImplCopyWith<_$FixtureLoadedImpl> get copyWith =>
      __$$FixtureLoadedImplCopyWithImpl<_$FixtureLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FixtureModel> fixtures) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(fixtures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FixtureModel> fixtures)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(fixtures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FixtureModel> fixtures)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fixtures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixtureInitial value) initial,
    required TResult Function(FixtureLoading value) loading,
    required TResult Function(FixtureLoaded value) loaded,
    required TResult Function(FixtureError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixtureInitial value)? initial,
    TResult? Function(FixtureLoading value)? loading,
    TResult? Function(FixtureLoaded value)? loaded,
    TResult? Function(FixtureError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixtureInitial value)? initial,
    TResult Function(FixtureLoading value)? loading,
    TResult Function(FixtureLoaded value)? loaded,
    TResult Function(FixtureError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FixtureLoaded implements FixtureState {
  const factory FixtureLoaded(final List<FixtureModel> fixtures) =
      _$FixtureLoadedImpl;

  List<FixtureModel> get fixtures;

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixtureLoadedImplCopyWith<_$FixtureLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FixtureErrorImplCopyWith<$Res> {
  factory _$$FixtureErrorImplCopyWith(
          _$FixtureErrorImpl value, $Res Function(_$FixtureErrorImpl) then) =
      __$$FixtureErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FixtureErrorImplCopyWithImpl<$Res>
    extends _$FixtureStateCopyWithImpl<$Res, _$FixtureErrorImpl>
    implements _$$FixtureErrorImplCopyWith<$Res> {
  __$$FixtureErrorImplCopyWithImpl(
      _$FixtureErrorImpl _value, $Res Function(_$FixtureErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FixtureErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FixtureErrorImpl implements FixtureError {
  const _$FixtureErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FixtureState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixtureErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixtureErrorImplCopyWith<_$FixtureErrorImpl> get copyWith =>
      __$$FixtureErrorImplCopyWithImpl<_$FixtureErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FixtureModel> fixtures) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FixtureModel> fixtures)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FixtureModel> fixtures)? loaded,
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
    required TResult Function(FixtureInitial value) initial,
    required TResult Function(FixtureLoading value) loading,
    required TResult Function(FixtureLoaded value) loaded,
    required TResult Function(FixtureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixtureInitial value)? initial,
    TResult? Function(FixtureLoading value)? loading,
    TResult? Function(FixtureLoaded value)? loaded,
    TResult? Function(FixtureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixtureInitial value)? initial,
    TResult Function(FixtureLoading value)? loading,
    TResult Function(FixtureLoaded value)? loaded,
    TResult Function(FixtureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FixtureError implements FixtureState {
  const factory FixtureError(final String message) = _$FixtureErrorImpl;

  String get message;

  /// Create a copy of FixtureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixtureErrorImplCopyWith<_$FixtureErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
