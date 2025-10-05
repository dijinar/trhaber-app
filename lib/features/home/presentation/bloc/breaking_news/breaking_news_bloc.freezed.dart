// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breaking_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BreakingNewsEvent {
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
    required TResult Function(FetchBreakingNews value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBreakingNews value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBreakingNews value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakingNewsEventCopyWith<$Res> {
  factory $BreakingNewsEventCopyWith(
          BreakingNewsEvent value, $Res Function(BreakingNewsEvent) then) =
      _$BreakingNewsEventCopyWithImpl<$Res, BreakingNewsEvent>;
}

/// @nodoc
class _$BreakingNewsEventCopyWithImpl<$Res, $Val extends BreakingNewsEvent>
    implements $BreakingNewsEventCopyWith<$Res> {
  _$BreakingNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreakingNewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchBreakingNewsImplCopyWith<$Res> {
  factory _$$FetchBreakingNewsImplCopyWith(_$FetchBreakingNewsImpl value,
          $Res Function(_$FetchBreakingNewsImpl) then) =
      __$$FetchBreakingNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBreakingNewsImplCopyWithImpl<$Res>
    extends _$BreakingNewsEventCopyWithImpl<$Res, _$FetchBreakingNewsImpl>
    implements _$$FetchBreakingNewsImplCopyWith<$Res> {
  __$$FetchBreakingNewsImplCopyWithImpl(_$FetchBreakingNewsImpl _value,
      $Res Function(_$FetchBreakingNewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakingNewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchBreakingNewsImpl implements FetchBreakingNews {
  const _$FetchBreakingNewsImpl();

  @override
  String toString() {
    return 'BreakingNewsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBreakingNewsImpl);
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
    required TResult Function(FetchBreakingNews value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBreakingNews value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBreakingNews value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchBreakingNews implements BreakingNewsEvent {
  const factory FetchBreakingNews() = _$FetchBreakingNewsImpl;
}

/// @nodoc
mixin _$BreakingNewsState {
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
    required TResult Function(BreakingNewsInitial value) initial,
    required TResult Function(BreakingNewsLoading value) loading,
    required TResult Function(BreakingNewsLoaded value) loaded,
    required TResult Function(BreakingNewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreakingNewsInitial value)? initial,
    TResult? Function(BreakingNewsLoading value)? loading,
    TResult? Function(BreakingNewsLoaded value)? loaded,
    TResult? Function(BreakingNewsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreakingNewsInitial value)? initial,
    TResult Function(BreakingNewsLoading value)? loading,
    TResult Function(BreakingNewsLoaded value)? loaded,
    TResult Function(BreakingNewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreakingNewsStateCopyWith<$Res> {
  factory $BreakingNewsStateCopyWith(
          BreakingNewsState value, $Res Function(BreakingNewsState) then) =
      _$BreakingNewsStateCopyWithImpl<$Res, BreakingNewsState>;
}

/// @nodoc
class _$BreakingNewsStateCopyWithImpl<$Res, $Val extends BreakingNewsState>
    implements $BreakingNewsStateCopyWith<$Res> {
  _$BreakingNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BreakingNewsInitialImplCopyWith<$Res> {
  factory _$$BreakingNewsInitialImplCopyWith(_$BreakingNewsInitialImpl value,
          $Res Function(_$BreakingNewsInitialImpl) then) =
      __$$BreakingNewsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BreakingNewsInitialImplCopyWithImpl<$Res>
    extends _$BreakingNewsStateCopyWithImpl<$Res, _$BreakingNewsInitialImpl>
    implements _$$BreakingNewsInitialImplCopyWith<$Res> {
  __$$BreakingNewsInitialImplCopyWithImpl(_$BreakingNewsInitialImpl _value,
      $Res Function(_$BreakingNewsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BreakingNewsInitialImpl implements BreakingNewsInitial {
  const _$BreakingNewsInitialImpl();

  @override
  String toString() {
    return 'BreakingNewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakingNewsInitialImpl);
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
    required TResult Function(BreakingNewsInitial value) initial,
    required TResult Function(BreakingNewsLoading value) loading,
    required TResult Function(BreakingNewsLoaded value) loaded,
    required TResult Function(BreakingNewsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreakingNewsInitial value)? initial,
    TResult? Function(BreakingNewsLoading value)? loading,
    TResult? Function(BreakingNewsLoaded value)? loaded,
    TResult? Function(BreakingNewsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreakingNewsInitial value)? initial,
    TResult Function(BreakingNewsLoading value)? loading,
    TResult Function(BreakingNewsLoaded value)? loaded,
    TResult Function(BreakingNewsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BreakingNewsInitial implements BreakingNewsState {
  const factory BreakingNewsInitial() = _$BreakingNewsInitialImpl;
}

/// @nodoc
abstract class _$$BreakingNewsLoadingImplCopyWith<$Res> {
  factory _$$BreakingNewsLoadingImplCopyWith(_$BreakingNewsLoadingImpl value,
          $Res Function(_$BreakingNewsLoadingImpl) then) =
      __$$BreakingNewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BreakingNewsLoadingImplCopyWithImpl<$Res>
    extends _$BreakingNewsStateCopyWithImpl<$Res, _$BreakingNewsLoadingImpl>
    implements _$$BreakingNewsLoadingImplCopyWith<$Res> {
  __$$BreakingNewsLoadingImplCopyWithImpl(_$BreakingNewsLoadingImpl _value,
      $Res Function(_$BreakingNewsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BreakingNewsLoadingImpl implements BreakingNewsLoading {
  const _$BreakingNewsLoadingImpl();

  @override
  String toString() {
    return 'BreakingNewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakingNewsLoadingImpl);
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
    required TResult Function(BreakingNewsInitial value) initial,
    required TResult Function(BreakingNewsLoading value) loading,
    required TResult Function(BreakingNewsLoaded value) loaded,
    required TResult Function(BreakingNewsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreakingNewsInitial value)? initial,
    TResult? Function(BreakingNewsLoading value)? loading,
    TResult? Function(BreakingNewsLoaded value)? loaded,
    TResult? Function(BreakingNewsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreakingNewsInitial value)? initial,
    TResult Function(BreakingNewsLoading value)? loading,
    TResult Function(BreakingNewsLoaded value)? loaded,
    TResult Function(BreakingNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BreakingNewsLoading implements BreakingNewsState {
  const factory BreakingNewsLoading() = _$BreakingNewsLoadingImpl;
}

/// @nodoc
abstract class _$$BreakingNewsLoadedImplCopyWith<$Res> {
  factory _$$BreakingNewsLoadedImplCopyWith(_$BreakingNewsLoadedImpl value,
          $Res Function(_$BreakingNewsLoadedImpl) then) =
      __$$BreakingNewsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryNewsModel> news});
}

/// @nodoc
class __$$BreakingNewsLoadedImplCopyWithImpl<$Res>
    extends _$BreakingNewsStateCopyWithImpl<$Res, _$BreakingNewsLoadedImpl>
    implements _$$BreakingNewsLoadedImplCopyWith<$Res> {
  __$$BreakingNewsLoadedImplCopyWithImpl(_$BreakingNewsLoadedImpl _value,
      $Res Function(_$BreakingNewsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$BreakingNewsLoadedImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
    ));
  }
}

/// @nodoc

class _$BreakingNewsLoadedImpl implements BreakingNewsLoaded {
  const _$BreakingNewsLoadedImpl(final List<CategoryNewsModel> news)
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
    return 'BreakingNewsState.loaded(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakingNewsLoadedImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakingNewsLoadedImplCopyWith<_$BreakingNewsLoadedImpl> get copyWith =>
      __$$BreakingNewsLoadedImplCopyWithImpl<_$BreakingNewsLoadedImpl>(
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
    required TResult Function(BreakingNewsInitial value) initial,
    required TResult Function(BreakingNewsLoading value) loading,
    required TResult Function(BreakingNewsLoaded value) loaded,
    required TResult Function(BreakingNewsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreakingNewsInitial value)? initial,
    TResult? Function(BreakingNewsLoading value)? loading,
    TResult? Function(BreakingNewsLoaded value)? loaded,
    TResult? Function(BreakingNewsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreakingNewsInitial value)? initial,
    TResult Function(BreakingNewsLoading value)? loading,
    TResult Function(BreakingNewsLoaded value)? loaded,
    TResult Function(BreakingNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BreakingNewsLoaded implements BreakingNewsState {
  const factory BreakingNewsLoaded(final List<CategoryNewsModel> news) =
      _$BreakingNewsLoadedImpl;

  List<CategoryNewsModel> get news;

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreakingNewsLoadedImplCopyWith<_$BreakingNewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreakingNewsErrorImplCopyWith<$Res> {
  factory _$$BreakingNewsErrorImplCopyWith(_$BreakingNewsErrorImpl value,
          $Res Function(_$BreakingNewsErrorImpl) then) =
      __$$BreakingNewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BreakingNewsErrorImplCopyWithImpl<$Res>
    extends _$BreakingNewsStateCopyWithImpl<$Res, _$BreakingNewsErrorImpl>
    implements _$$BreakingNewsErrorImplCopyWith<$Res> {
  __$$BreakingNewsErrorImplCopyWithImpl(_$BreakingNewsErrorImpl _value,
      $Res Function(_$BreakingNewsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BreakingNewsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BreakingNewsErrorImpl implements BreakingNewsError {
  const _$BreakingNewsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BreakingNewsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreakingNewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakingNewsErrorImplCopyWith<_$BreakingNewsErrorImpl> get copyWith =>
      __$$BreakingNewsErrorImplCopyWithImpl<_$BreakingNewsErrorImpl>(
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
    required TResult Function(BreakingNewsInitial value) initial,
    required TResult Function(BreakingNewsLoading value) loading,
    required TResult Function(BreakingNewsLoaded value) loaded,
    required TResult Function(BreakingNewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BreakingNewsInitial value)? initial,
    TResult? Function(BreakingNewsLoading value)? loading,
    TResult? Function(BreakingNewsLoaded value)? loaded,
    TResult? Function(BreakingNewsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BreakingNewsInitial value)? initial,
    TResult Function(BreakingNewsLoading value)? loading,
    TResult Function(BreakingNewsLoaded value)? loaded,
    TResult Function(BreakingNewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BreakingNewsError implements BreakingNewsState {
  const factory BreakingNewsError(final String message) =
      _$BreakingNewsErrorImpl;

  String get message;

  /// Create a copy of BreakingNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreakingNewsErrorImplCopyWith<_$BreakingNewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
