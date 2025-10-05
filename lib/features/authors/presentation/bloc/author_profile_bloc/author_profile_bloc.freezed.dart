// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAuthorArticles value) fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAuthorArticles value)? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAuthorArticles value)? fetchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorProfileEventCopyWith<$Res> {
  factory $AuthorProfileEventCopyWith(
          AuthorProfileEvent value, $Res Function(AuthorProfileEvent) then) =
      _$AuthorProfileEventCopyWithImpl<$Res, AuthorProfileEvent>;
}

/// @nodoc
class _$AuthorProfileEventCopyWithImpl<$Res, $Val extends AuthorProfileEvent>
    implements $AuthorProfileEventCopyWith<$Res> {
  _$AuthorProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAuthorArticlesImplCopyWith<$Res> {
  factory _$$FetchAuthorArticlesImplCopyWith(_$FetchAuthorArticlesImpl value,
          $Res Function(_$FetchAuthorArticlesImpl) then) =
      __$$FetchAuthorArticlesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAuthorArticlesImplCopyWithImpl<$Res>
    extends _$AuthorProfileEventCopyWithImpl<$Res, _$FetchAuthorArticlesImpl>
    implements _$$FetchAuthorArticlesImplCopyWith<$Res> {
  __$$FetchAuthorArticlesImplCopyWithImpl(_$FetchAuthorArticlesImpl _value,
      $Res Function(_$FetchAuthorArticlesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAuthorArticlesImpl implements FetchAuthorArticles {
  const _$FetchAuthorArticlesImpl();

  @override
  String toString() {
    return 'AuthorProfileEvent.fetchArticles()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAuthorArticlesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
  }) {
    return fetchArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchArticles,
  }) {
    return fetchArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAuthorArticles value) fetchArticles,
  }) {
    return fetchArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAuthorArticles value)? fetchArticles,
  }) {
    return fetchArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAuthorArticles value)? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles(this);
    }
    return orElse();
  }
}

abstract class FetchAuthorArticles implements AuthorProfileEvent {
  const factory FetchAuthorArticles() = _$FetchAuthorArticlesImpl;
}

/// @nodoc
mixin _$AuthorProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthorModel author, List<ArticleModel> articles)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorProfileInitial value) initial,
    required TResult Function(AuthorProfileLoading value) loading,
    required TResult Function(AuthorProfileLoaded value) loaded,
    required TResult Function(AuthorProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorProfileInitial value)? initial,
    TResult? Function(AuthorProfileLoading value)? loading,
    TResult? Function(AuthorProfileLoaded value)? loaded,
    TResult? Function(AuthorProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorProfileInitial value)? initial,
    TResult Function(AuthorProfileLoading value)? loading,
    TResult Function(AuthorProfileLoaded value)? loaded,
    TResult Function(AuthorProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorProfileStateCopyWith<$Res> {
  factory $AuthorProfileStateCopyWith(
          AuthorProfileState value, $Res Function(AuthorProfileState) then) =
      _$AuthorProfileStateCopyWithImpl<$Res, AuthorProfileState>;
}

/// @nodoc
class _$AuthorProfileStateCopyWithImpl<$Res, $Val extends AuthorProfileState>
    implements $AuthorProfileStateCopyWith<$Res> {
  _$AuthorProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthorProfileInitialImplCopyWith<$Res> {
  factory _$$AuthorProfileInitialImplCopyWith(_$AuthorProfileInitialImpl value,
          $Res Function(_$AuthorProfileInitialImpl) then) =
      __$$AuthorProfileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorProfileInitialImplCopyWithImpl<$Res>
    extends _$AuthorProfileStateCopyWithImpl<$Res, _$AuthorProfileInitialImpl>
    implements _$$AuthorProfileInitialImplCopyWith<$Res> {
  __$$AuthorProfileInitialImplCopyWithImpl(_$AuthorProfileInitialImpl _value,
      $Res Function(_$AuthorProfileInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorProfileInitialImpl implements AuthorProfileInitial {
  const _$AuthorProfileInitialImpl();

  @override
  String toString() {
    return 'AuthorProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorProfileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthorModel author, List<ArticleModel> articles)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthorModel author, List<ArticleModel> articles)? loaded,
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
    required TResult Function(AuthorProfileInitial value) initial,
    required TResult Function(AuthorProfileLoading value) loading,
    required TResult Function(AuthorProfileLoaded value) loaded,
    required TResult Function(AuthorProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorProfileInitial value)? initial,
    TResult? Function(AuthorProfileLoading value)? loading,
    TResult? Function(AuthorProfileLoaded value)? loaded,
    TResult? Function(AuthorProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorProfileInitial value)? initial,
    TResult Function(AuthorProfileLoading value)? loading,
    TResult Function(AuthorProfileLoaded value)? loaded,
    TResult Function(AuthorProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthorProfileInitial implements AuthorProfileState {
  const factory AuthorProfileInitial() = _$AuthorProfileInitialImpl;
}

/// @nodoc
abstract class _$$AuthorProfileLoadingImplCopyWith<$Res> {
  factory _$$AuthorProfileLoadingImplCopyWith(_$AuthorProfileLoadingImpl value,
          $Res Function(_$AuthorProfileLoadingImpl) then) =
      __$$AuthorProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorProfileLoadingImplCopyWithImpl<$Res>
    extends _$AuthorProfileStateCopyWithImpl<$Res, _$AuthorProfileLoadingImpl>
    implements _$$AuthorProfileLoadingImplCopyWith<$Res> {
  __$$AuthorProfileLoadingImplCopyWithImpl(_$AuthorProfileLoadingImpl _value,
      $Res Function(_$AuthorProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorProfileLoadingImpl implements AuthorProfileLoading {
  const _$AuthorProfileLoadingImpl();

  @override
  String toString() {
    return 'AuthorProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthorModel author, List<ArticleModel> articles)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthorModel author, List<ArticleModel> articles)? loaded,
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
    required TResult Function(AuthorProfileInitial value) initial,
    required TResult Function(AuthorProfileLoading value) loading,
    required TResult Function(AuthorProfileLoaded value) loaded,
    required TResult Function(AuthorProfileError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorProfileInitial value)? initial,
    TResult? Function(AuthorProfileLoading value)? loading,
    TResult? Function(AuthorProfileLoaded value)? loaded,
    TResult? Function(AuthorProfileError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorProfileInitial value)? initial,
    TResult Function(AuthorProfileLoading value)? loading,
    TResult Function(AuthorProfileLoaded value)? loaded,
    TResult Function(AuthorProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthorProfileLoading implements AuthorProfileState {
  const factory AuthorProfileLoading() = _$AuthorProfileLoadingImpl;
}

/// @nodoc
abstract class _$$AuthorProfileLoadedImplCopyWith<$Res> {
  factory _$$AuthorProfileLoadedImplCopyWith(_$AuthorProfileLoadedImpl value,
          $Res Function(_$AuthorProfileLoadedImpl) then) =
      __$$AuthorProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthorModel author, List<ArticleModel> articles});

  $AuthorModelCopyWith<$Res> get author;
}

/// @nodoc
class __$$AuthorProfileLoadedImplCopyWithImpl<$Res>
    extends _$AuthorProfileStateCopyWithImpl<$Res, _$AuthorProfileLoadedImpl>
    implements _$$AuthorProfileLoadedImplCopyWith<$Res> {
  __$$AuthorProfileLoadedImplCopyWithImpl(_$AuthorProfileLoadedImpl _value,
      $Res Function(_$AuthorProfileLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? articles = null,
  }) {
    return _then(_$AuthorProfileLoadedImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorModelCopyWith<$Res> get author {
    return $AuthorModelCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc

class _$AuthorProfileLoadedImpl implements AuthorProfileLoaded {
  const _$AuthorProfileLoadedImpl(
      {required this.author, required final List<ArticleModel> articles})
      : _articles = articles;

  @override
  final AuthorModel author;
  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'AuthorProfileState.loaded(author: $author, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorProfileLoadedImpl &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, author, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorProfileLoadedImplCopyWith<_$AuthorProfileLoadedImpl> get copyWith =>
      __$$AuthorProfileLoadedImplCopyWithImpl<_$AuthorProfileLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthorModel author, List<ArticleModel> articles)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(author, articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(author, articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(author, articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorProfileInitial value) initial,
    required TResult Function(AuthorProfileLoading value) loading,
    required TResult Function(AuthorProfileLoaded value) loaded,
    required TResult Function(AuthorProfileError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorProfileInitial value)? initial,
    TResult? Function(AuthorProfileLoading value)? loading,
    TResult? Function(AuthorProfileLoaded value)? loaded,
    TResult? Function(AuthorProfileError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorProfileInitial value)? initial,
    TResult Function(AuthorProfileLoading value)? loading,
    TResult Function(AuthorProfileLoaded value)? loaded,
    TResult Function(AuthorProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthorProfileLoaded implements AuthorProfileState {
  const factory AuthorProfileLoaded(
      {required final AuthorModel author,
      required final List<ArticleModel> articles}) = _$AuthorProfileLoadedImpl;

  AuthorModel get author;
  List<ArticleModel> get articles;

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorProfileLoadedImplCopyWith<_$AuthorProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorProfileErrorImplCopyWith<$Res> {
  factory _$$AuthorProfileErrorImplCopyWith(_$AuthorProfileErrorImpl value,
          $Res Function(_$AuthorProfileErrorImpl) then) =
      __$$AuthorProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthorProfileErrorImplCopyWithImpl<$Res>
    extends _$AuthorProfileStateCopyWithImpl<$Res, _$AuthorProfileErrorImpl>
    implements _$$AuthorProfileErrorImplCopyWith<$Res> {
  __$$AuthorProfileErrorImplCopyWithImpl(_$AuthorProfileErrorImpl _value,
      $Res Function(_$AuthorProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthorProfileErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorProfileErrorImpl implements AuthorProfileError {
  const _$AuthorProfileErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthorProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorProfileErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorProfileErrorImplCopyWith<_$AuthorProfileErrorImpl> get copyWith =>
      __$$AuthorProfileErrorImplCopyWithImpl<_$AuthorProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthorModel author, List<ArticleModel> articles)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthorModel author, List<ArticleModel> articles)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthorModel author, List<ArticleModel> articles)? loaded,
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
    required TResult Function(AuthorProfileInitial value) initial,
    required TResult Function(AuthorProfileLoading value) loading,
    required TResult Function(AuthorProfileLoaded value) loaded,
    required TResult Function(AuthorProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthorProfileInitial value)? initial,
    TResult? Function(AuthorProfileLoading value)? loading,
    TResult? Function(AuthorProfileLoaded value)? loaded,
    TResult? Function(AuthorProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorProfileInitial value)? initial,
    TResult Function(AuthorProfileLoading value)? loading,
    TResult Function(AuthorProfileLoaded value)? loaded,
    TResult Function(AuthorProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthorProfileError implements AuthorProfileState {
  const factory AuthorProfileError(final String message) =
      _$AuthorProfileErrorImpl;

  String get message;

  /// Create a copy of AuthorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorProfileErrorImplCopyWith<_$AuthorProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
