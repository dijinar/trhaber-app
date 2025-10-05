// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infographic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfographicEvent {
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
    required TResult Function(FetchInfographic value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchInfographic value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchInfographic value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfographicEventCopyWith<$Res> {
  factory $InfographicEventCopyWith(
          InfographicEvent value, $Res Function(InfographicEvent) then) =
      _$InfographicEventCopyWithImpl<$Res, InfographicEvent>;
}

/// @nodoc
class _$InfographicEventCopyWithImpl<$Res, $Val extends InfographicEvent>
    implements $InfographicEventCopyWith<$Res> {
  _$InfographicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfographicEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchInfographicImplCopyWith<$Res> {
  factory _$$FetchInfographicImplCopyWith(_$FetchInfographicImpl value,
          $Res Function(_$FetchInfographicImpl) then) =
      __$$FetchInfographicImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchInfographicImplCopyWithImpl<$Res>
    extends _$InfographicEventCopyWithImpl<$Res, _$FetchInfographicImpl>
    implements _$$FetchInfographicImplCopyWith<$Res> {
  __$$FetchInfographicImplCopyWithImpl(_$FetchInfographicImpl _value,
      $Res Function(_$FetchInfographicImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfographicEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchInfographicImpl implements FetchInfographic {
  const _$FetchInfographicImpl();

  @override
  String toString() {
    return 'InfographicEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchInfographicImpl);
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
    required TResult Function(FetchInfographic value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchInfographic value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchInfographic value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchInfographic implements InfographicEvent {
  const factory FetchInfographic() = _$FetchInfographicImpl;
}

/// @nodoc
mixin _$InfographicState {
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
    required TResult Function(InfographicInitial value) initial,
    required TResult Function(InfographicLoading value) loading,
    required TResult Function(InfographicLoaded value) loaded,
    required TResult Function(InfographicError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfographicInitial value)? initial,
    TResult? Function(InfographicLoading value)? loading,
    TResult? Function(InfographicLoaded value)? loaded,
    TResult? Function(InfographicError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfographicInitial value)? initial,
    TResult Function(InfographicLoading value)? loading,
    TResult Function(InfographicLoaded value)? loaded,
    TResult Function(InfographicError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfographicStateCopyWith<$Res> {
  factory $InfographicStateCopyWith(
          InfographicState value, $Res Function(InfographicState) then) =
      _$InfographicStateCopyWithImpl<$Res, InfographicState>;
}

/// @nodoc
class _$InfographicStateCopyWithImpl<$Res, $Val extends InfographicState>
    implements $InfographicStateCopyWith<$Res> {
  _$InfographicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InfographicInitialImplCopyWith<$Res> {
  factory _$$InfographicInitialImplCopyWith(_$InfographicInitialImpl value,
          $Res Function(_$InfographicInitialImpl) then) =
      __$$InfographicInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InfographicInitialImplCopyWithImpl<$Res>
    extends _$InfographicStateCopyWithImpl<$Res, _$InfographicInitialImpl>
    implements _$$InfographicInitialImplCopyWith<$Res> {
  __$$InfographicInitialImplCopyWithImpl(_$InfographicInitialImpl _value,
      $Res Function(_$InfographicInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InfographicInitialImpl implements InfographicInitial {
  const _$InfographicInitialImpl();

  @override
  String toString() {
    return 'InfographicState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfographicInitialImpl);
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
    required TResult Function(InfographicInitial value) initial,
    required TResult Function(InfographicLoading value) loading,
    required TResult Function(InfographicLoaded value) loaded,
    required TResult Function(InfographicError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfographicInitial value)? initial,
    TResult? Function(InfographicLoading value)? loading,
    TResult? Function(InfographicLoaded value)? loaded,
    TResult? Function(InfographicError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfographicInitial value)? initial,
    TResult Function(InfographicLoading value)? loading,
    TResult Function(InfographicLoaded value)? loaded,
    TResult Function(InfographicError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InfographicInitial implements InfographicState {
  const factory InfographicInitial() = _$InfographicInitialImpl;
}

/// @nodoc
abstract class _$$InfographicLoadingImplCopyWith<$Res> {
  factory _$$InfographicLoadingImplCopyWith(_$InfographicLoadingImpl value,
          $Res Function(_$InfographicLoadingImpl) then) =
      __$$InfographicLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InfographicLoadingImplCopyWithImpl<$Res>
    extends _$InfographicStateCopyWithImpl<$Res, _$InfographicLoadingImpl>
    implements _$$InfographicLoadingImplCopyWith<$Res> {
  __$$InfographicLoadingImplCopyWithImpl(_$InfographicLoadingImpl _value,
      $Res Function(_$InfographicLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InfographicLoadingImpl implements InfographicLoading {
  const _$InfographicLoadingImpl();

  @override
  String toString() {
    return 'InfographicState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfographicLoadingImpl);
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
    required TResult Function(InfographicInitial value) initial,
    required TResult Function(InfographicLoading value) loading,
    required TResult Function(InfographicLoaded value) loaded,
    required TResult Function(InfographicError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfographicInitial value)? initial,
    TResult? Function(InfographicLoading value)? loading,
    TResult? Function(InfographicLoaded value)? loaded,
    TResult? Function(InfographicError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfographicInitial value)? initial,
    TResult Function(InfographicLoading value)? loading,
    TResult Function(InfographicLoaded value)? loaded,
    TResult Function(InfographicError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InfographicLoading implements InfographicState {
  const factory InfographicLoading() = _$InfographicLoadingImpl;
}

/// @nodoc
abstract class _$$InfographicLoadedImplCopyWith<$Res> {
  factory _$$InfographicLoadedImplCopyWith(_$InfographicLoadedImpl value,
          $Res Function(_$InfographicLoadedImpl) then) =
      __$$InfographicLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> news});
}

/// @nodoc
class __$$InfographicLoadedImplCopyWithImpl<$Res>
    extends _$InfographicStateCopyWithImpl<$Res, _$InfographicLoadedImpl>
    implements _$$InfographicLoadedImplCopyWith<$Res> {
  __$$InfographicLoadedImplCopyWithImpl(_$InfographicLoadedImpl _value,
      $Res Function(_$InfographicLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$InfographicLoadedImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$InfographicLoadedImpl implements InfographicLoaded {
  const _$InfographicLoadedImpl(final List<CategoryNewsModel> news)
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
    return 'InfographicState.loaded(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfographicLoadedImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfographicLoadedImplCopyWith<_$InfographicLoadedImpl> get copyWith =>
      __$$InfographicLoadedImplCopyWithImpl<_$InfographicLoadedImpl>(
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
    required TResult Function(InfographicInitial value) initial,
    required TResult Function(InfographicLoading value) loading,
    required TResult Function(InfographicLoaded value) loaded,
    required TResult Function(InfographicError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfographicInitial value)? initial,
    TResult? Function(InfographicLoading value)? loading,
    TResult? Function(InfographicLoaded value)? loaded,
    TResult? Function(InfographicError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfographicInitial value)? initial,
    TResult Function(InfographicLoading value)? loading,
    TResult Function(InfographicLoaded value)? loaded,
    TResult Function(InfographicError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class InfographicLoaded implements InfographicState {
  const factory InfographicLoaded(final List<CategoryNewsModel> news) =
      _$InfographicLoadedImpl;

  List<CategoryNewsModel> get news;

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfographicLoadedImplCopyWith<_$InfographicLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfographicErrorImplCopyWith<$Res> {
  factory _$$InfographicErrorImplCopyWith(_$InfographicErrorImpl value,
          $Res Function(_$InfographicErrorImpl) then) =
      __$$InfographicErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InfographicErrorImplCopyWithImpl<$Res>
    extends _$InfographicStateCopyWithImpl<$Res, _$InfographicErrorImpl>
    implements _$$InfographicErrorImplCopyWith<$Res> {
  __$$InfographicErrorImplCopyWithImpl(_$InfographicErrorImpl _value,
      $Res Function(_$InfographicErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InfographicErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InfographicErrorImpl implements InfographicError {
  const _$InfographicErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InfographicState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfographicErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfographicErrorImplCopyWith<_$InfographicErrorImpl> get copyWith =>
      __$$InfographicErrorImplCopyWithImpl<_$InfographicErrorImpl>(
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
    required TResult Function(InfographicInitial value) initial,
    required TResult Function(InfographicLoading value) loading,
    required TResult Function(InfographicLoaded value) loaded,
    required TResult Function(InfographicError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfographicInitial value)? initial,
    TResult? Function(InfographicLoading value)? loading,
    TResult? Function(InfographicLoaded value)? loaded,
    TResult? Function(InfographicError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfographicInitial value)? initial,
    TResult Function(InfographicLoading value)? loading,
    TResult Function(InfographicLoaded value)? loaded,
    TResult Function(InfographicError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InfographicError implements InfographicState {
  const factory InfographicError(final String message) = _$InfographicErrorImpl;

  String get message;

  /// Create a copy of InfographicState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfographicErrorImplCopyWith<_$InfographicErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
