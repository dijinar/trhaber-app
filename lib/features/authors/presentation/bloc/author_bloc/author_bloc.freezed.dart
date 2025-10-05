// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorEvent {
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
    required TResult Function(FetchAuthors value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAuthors value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAuthors value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorEventCopyWith<$Res> {
  factory $AuthorEventCopyWith(
          AuthorEvent value, $Res Function(AuthorEvent) then) =
      _$AuthorEventCopyWithImpl<$Res, AuthorEvent>;
}

/// @nodoc
class _$AuthorEventCopyWithImpl<$Res, $Val extends AuthorEvent>
    implements $AuthorEventCopyWith<$Res> {
  _$AuthorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAuthorsImplCopyWith<$Res> {
  factory _$$FetchAuthorsImplCopyWith(
          _$FetchAuthorsImpl value, $Res Function(_$FetchAuthorsImpl) then) =
      __$$FetchAuthorsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAuthorsImplCopyWithImpl<$Res>
    extends _$AuthorEventCopyWithImpl<$Res, _$FetchAuthorsImpl>
    implements _$$FetchAuthorsImplCopyWith<$Res> {
  __$$FetchAuthorsImplCopyWithImpl(
      _$FetchAuthorsImpl _value, $Res Function(_$FetchAuthorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAuthorsImpl implements FetchAuthors {
  const _$FetchAuthorsImpl();

  @override
  String toString() {
    return 'AuthorEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAuthorsImpl);
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
    required TResult Function(FetchAuthors value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAuthors value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAuthors value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchAuthors implements AuthorEvent {
  const factory FetchAuthors() = _$FetchAuthorsImpl;
}

/// @nodoc
mixin _$AuthorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuthorModel> authors) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuthorModel> authors)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuthorModel> authors)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorInitial value) initial,
    required TResult Function(AuthorLoading value) loading,
    required TResult Function(AuthorLoaded value) loaded,
    required TResult Function(AuthorError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorInitial value)? initial,
    TResult? Function(AuthorLoading value)? loading,
    TResult? Function(AuthorLoaded value)? loaded,
    TResult? Function(AuthorError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorInitial value)? initial,
    TResult Function(AuthorLoading value)? loading,
    TResult Function(AuthorLoaded value)? loaded,
    TResult Function(AuthorError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorStateCopyWith<$Res> {
  factory $AuthorStateCopyWith(
          AuthorState value, $Res Function(AuthorState) then) =
      _$AuthorStateCopyWithImpl<$Res, AuthorState>;
}

/// @nodoc
class _$AuthorStateCopyWithImpl<$Res, $Val extends AuthorState>
    implements $AuthorStateCopyWith<$Res> {
  _$AuthorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthorInitialImplCopyWith<$Res> {
  factory _$$AuthorInitialImplCopyWith(
          _$AuthorInitialImpl value, $Res Function(_$AuthorInitialImpl) then) =
      __$$AuthorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorInitialImplCopyWithImpl<$Res>
    extends _$AuthorStateCopyWithImpl<$Res, _$AuthorInitialImpl>
    implements _$$AuthorInitialImplCopyWith<$Res> {
  __$$AuthorInitialImplCopyWithImpl(
      _$AuthorInitialImpl _value, $Res Function(_$AuthorInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorInitialImpl implements AuthorInitial {
  const _$AuthorInitialImpl();

  @override
  String toString() {
    return 'AuthorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuthorModel> authors) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuthorModel> authors)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuthorModel> authors)? loaded,
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
    required TResult Function(AuthorInitial value) initial,
    required TResult Function(AuthorLoading value) loading,
    required TResult Function(AuthorLoaded value) loaded,
    required TResult Function(AuthorError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorInitial value)? initial,
    TResult? Function(AuthorLoading value)? loading,
    TResult? Function(AuthorLoaded value)? loaded,
    TResult? Function(AuthorError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorInitial value)? initial,
    TResult Function(AuthorLoading value)? loading,
    TResult Function(AuthorLoaded value)? loaded,
    TResult Function(AuthorError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthorInitial implements AuthorState {
  const factory AuthorInitial() = _$AuthorInitialImpl;
}

/// @nodoc
abstract class _$$AuthorLoadingImplCopyWith<$Res> {
  factory _$$AuthorLoadingImplCopyWith(
          _$AuthorLoadingImpl value, $Res Function(_$AuthorLoadingImpl) then) =
      __$$AuthorLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorLoadingImplCopyWithImpl<$Res>
    extends _$AuthorStateCopyWithImpl<$Res, _$AuthorLoadingImpl>
    implements _$$AuthorLoadingImplCopyWith<$Res> {
  __$$AuthorLoadingImplCopyWithImpl(
      _$AuthorLoadingImpl _value, $Res Function(_$AuthorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorLoadingImpl implements AuthorLoading {
  const _$AuthorLoadingImpl();

  @override
  String toString() {
    return 'AuthorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuthorModel> authors) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuthorModel> authors)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuthorModel> authors)? loaded,
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
    required TResult Function(AuthorInitial value) initial,
    required TResult Function(AuthorLoading value) loading,
    required TResult Function(AuthorLoaded value) loaded,
    required TResult Function(AuthorError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorInitial value)? initial,
    TResult? Function(AuthorLoading value)? loading,
    TResult? Function(AuthorLoaded value)? loaded,
    TResult? Function(AuthorError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorInitial value)? initial,
    TResult Function(AuthorLoading value)? loading,
    TResult Function(AuthorLoaded value)? loaded,
    TResult Function(AuthorError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthorLoading implements AuthorState {
  const factory AuthorLoading() = _$AuthorLoadingImpl;
}

/// @nodoc
abstract class _$$AuthorLoadedImplCopyWith<$Res> {
  factory _$$AuthorLoadedImplCopyWith(
          _$AuthorLoadedImpl value, $Res Function(_$AuthorLoadedImpl) then) =
      __$$AuthorLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AuthorModel> authors});
}

/// @nodoc
class __$$AuthorLoadedImplCopyWithImpl<$Res>
    extends _$AuthorStateCopyWithImpl<$Res, _$AuthorLoadedImpl>
    implements _$$AuthorLoadedImplCopyWith<$Res> {
  __$$AuthorLoadedImplCopyWithImpl(
      _$AuthorLoadedImpl _value, $Res Function(_$AuthorLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authors = null,
  }) {
    return _then(_$AuthorLoadedImpl(
      null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<AuthorModel>,
    ));
  }
}

/// @nodoc

class _$AuthorLoadedImpl implements AuthorLoaded {
  const _$AuthorLoadedImpl(final List<AuthorModel> authors)
      : _authors = authors;

  final List<AuthorModel> _authors;
  @override
  List<AuthorModel> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  String toString() {
    return 'AuthorState.loaded(authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorLoadedImpl &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_authors));

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorLoadedImplCopyWith<_$AuthorLoadedImpl> get copyWith =>
      __$$AuthorLoadedImplCopyWithImpl<_$AuthorLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuthorModel> authors) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(authors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuthorModel> authors)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(authors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuthorModel> authors)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(authors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorInitial value) initial,
    required TResult Function(AuthorLoading value) loading,
    required TResult Function(AuthorLoaded value) loaded,
    required TResult Function(AuthorError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorInitial value)? initial,
    TResult? Function(AuthorLoading value)? loading,
    TResult? Function(AuthorLoaded value)? loaded,
    TResult? Function(AuthorError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorInitial value)? initial,
    TResult Function(AuthorLoading value)? loading,
    TResult Function(AuthorLoaded value)? loaded,
    TResult Function(AuthorError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthorLoaded implements AuthorState {
  const factory AuthorLoaded(final List<AuthorModel> authors) =
      _$AuthorLoadedImpl;

  List<AuthorModel> get authors;

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorLoadedImplCopyWith<_$AuthorLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorErrorImplCopyWith<$Res> {
  factory _$$AuthorErrorImplCopyWith(
          _$AuthorErrorImpl value, $Res Function(_$AuthorErrorImpl) then) =
      __$$AuthorErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthorErrorImplCopyWithImpl<$Res>
    extends _$AuthorStateCopyWithImpl<$Res, _$AuthorErrorImpl>
    implements _$$AuthorErrorImplCopyWith<$Res> {
  __$$AuthorErrorImplCopyWithImpl(
      _$AuthorErrorImpl _value, $Res Function(_$AuthorErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthorErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorErrorImpl implements AuthorError {
  const _$AuthorErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthorState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorErrorImplCopyWith<_$AuthorErrorImpl> get copyWith =>
      __$$AuthorErrorImplCopyWithImpl<_$AuthorErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AuthorModel> authors) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AuthorModel> authors)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AuthorModel> authors)? loaded,
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
    required TResult Function(AuthorInitial value) initial,
    required TResult Function(AuthorLoading value) loading,
    required TResult Function(AuthorLoaded value) loaded,
    required TResult Function(AuthorError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorInitial value)? initial,
    TResult? Function(AuthorLoading value)? loading,
    TResult? Function(AuthorLoaded value)? loaded,
    TResult? Function(AuthorError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorInitial value)? initial,
    TResult Function(AuthorLoading value)? loading,
    TResult Function(AuthorLoaded value)? loaded,
    TResult Function(AuthorError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthorError implements AuthorState {
  const factory AuthorError(final String message) = _$AuthorErrorImpl;

  String get message;

  /// Create a copy of AuthorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorErrorImplCopyWith<_$AuthorErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
