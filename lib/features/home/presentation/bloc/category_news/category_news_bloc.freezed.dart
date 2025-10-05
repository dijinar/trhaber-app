// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryNewsEvent {
  String get categoryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) fetch,
    required TResult Function(String categoryId) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? fetch,
    TResult? Function(String categoryId)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? fetch,
    TResult Function(String categoryId)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategoryNews value) fetch,
    required TResult Function(LoadMoreCategoryNews value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategoryNews value)? fetch,
    TResult? Function(LoadMoreCategoryNews value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategoryNews value)? fetch,
    TResult Function(LoadMoreCategoryNews value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryNewsEventCopyWith<CategoryNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryNewsEventCopyWith<$Res> {
  factory $CategoryNewsEventCopyWith(
          CategoryNewsEvent value, $Res Function(CategoryNewsEvent) then) =
      _$CategoryNewsEventCopyWithImpl<$Res, CategoryNewsEvent>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class _$CategoryNewsEventCopyWithImpl<$Res, $Val extends CategoryNewsEvent>
    implements $CategoryNewsEventCopyWith<$Res> {
  _$CategoryNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCategoryNewsImplCopyWith<$Res>
    implements $CategoryNewsEventCopyWith<$Res> {
  factory _$$FetchCategoryNewsImplCopyWith(_$FetchCategoryNewsImpl value,
          $Res Function(_$FetchCategoryNewsImpl) then) =
      __$$FetchCategoryNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$FetchCategoryNewsImplCopyWithImpl<$Res>
    extends _$CategoryNewsEventCopyWithImpl<$Res, _$FetchCategoryNewsImpl>
    implements _$$FetchCategoryNewsImplCopyWith<$Res> {
  __$$FetchCategoryNewsImplCopyWithImpl(_$FetchCategoryNewsImpl _value,
      $Res Function(_$FetchCategoryNewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$FetchCategoryNewsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCategoryNewsImpl implements FetchCategoryNews {
  const _$FetchCategoryNewsImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoryNewsEvent.fetch(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoryNewsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoryNewsImplCopyWith<_$FetchCategoryNewsImpl> get copyWith =>
      __$$FetchCategoryNewsImplCopyWithImpl<_$FetchCategoryNewsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) fetch,
    required TResult Function(String categoryId) loadMore,
  }) {
    return fetch(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? fetch,
    TResult? Function(String categoryId)? loadMore,
  }) {
    return fetch?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? fetch,
    TResult Function(String categoryId)? loadMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategoryNews value) fetch,
    required TResult Function(LoadMoreCategoryNews value) loadMore,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategoryNews value)? fetch,
    TResult? Function(LoadMoreCategoryNews value)? loadMore,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategoryNews value)? fetch,
    TResult Function(LoadMoreCategoryNews value)? loadMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchCategoryNews implements CategoryNewsEvent {
  const factory FetchCategoryNews(final String categoryId) =
      _$FetchCategoryNewsImpl;

  @override
  String get categoryId;

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCategoryNewsImplCopyWith<_$FetchCategoryNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreCategoryNewsImplCopyWith<$Res>
    implements $CategoryNewsEventCopyWith<$Res> {
  factory _$$LoadMoreCategoryNewsImplCopyWith(_$LoadMoreCategoryNewsImpl value,
          $Res Function(_$LoadMoreCategoryNewsImpl) then) =
      __$$LoadMoreCategoryNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$LoadMoreCategoryNewsImplCopyWithImpl<$Res>
    extends _$CategoryNewsEventCopyWithImpl<$Res, _$LoadMoreCategoryNewsImpl>
    implements _$$LoadMoreCategoryNewsImplCopyWith<$Res> {
  __$$LoadMoreCategoryNewsImplCopyWithImpl(_$LoadMoreCategoryNewsImpl _value,
      $Res Function(_$LoadMoreCategoryNewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$LoadMoreCategoryNewsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMoreCategoryNewsImpl implements LoadMoreCategoryNews {
  const _$LoadMoreCategoryNewsImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'CategoryNewsEvent.loadMore(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreCategoryNewsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreCategoryNewsImplCopyWith<_$LoadMoreCategoryNewsImpl>
      get copyWith =>
          __$$LoadMoreCategoryNewsImplCopyWithImpl<_$LoadMoreCategoryNewsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) fetch,
    required TResult Function(String categoryId) loadMore,
  }) {
    return loadMore(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? fetch,
    TResult? Function(String categoryId)? loadMore,
  }) {
    return loadMore?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? fetch,
    TResult Function(String categoryId)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCategoryNews value) fetch,
    required TResult Function(LoadMoreCategoryNews value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCategoryNews value)? fetch,
    TResult? Function(LoadMoreCategoryNews value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCategoryNews value)? fetch,
    TResult Function(LoadMoreCategoryNews value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreCategoryNews implements CategoryNewsEvent {
  const factory LoadMoreCategoryNews(final String categoryId) =
      _$LoadMoreCategoryNewsImpl;

  @override
  String get categoryId;

  /// Create a copy of CategoryNewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreCategoryNewsImplCopyWith<_$LoadMoreCategoryNewsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel category,
            List<CategoryNewsModel> news, int currentPage, bool isLastPage)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryNewsInitial value) initial,
    required TResult Function(CategoryNewsLoading value) loading,
    required TResult Function(CategoryNewsLoaded value) loaded,
    required TResult Function(CategoryNewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryNewsInitial value)? initial,
    TResult? Function(CategoryNewsLoading value)? loading,
    TResult? Function(CategoryNewsLoaded value)? loaded,
    TResult? Function(CategoryNewsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryNewsInitial value)? initial,
    TResult Function(CategoryNewsLoading value)? loading,
    TResult Function(CategoryNewsLoaded value)? loaded,
    TResult Function(CategoryNewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryNewsStateCopyWith<$Res> {
  factory $CategoryNewsStateCopyWith(
          CategoryNewsState value, $Res Function(CategoryNewsState) then) =
      _$CategoryNewsStateCopyWithImpl<$Res, CategoryNewsState>;
}

/// @nodoc
class _$CategoryNewsStateCopyWithImpl<$Res, $Val extends CategoryNewsState>
    implements $CategoryNewsStateCopyWith<$Res> {
  _$CategoryNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryNewsInitialImplCopyWith<$Res> {
  factory _$$CategoryNewsInitialImplCopyWith(_$CategoryNewsInitialImpl value,
          $Res Function(_$CategoryNewsInitialImpl) then) =
      __$$CategoryNewsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryNewsInitialImplCopyWithImpl<$Res>
    extends _$CategoryNewsStateCopyWithImpl<$Res, _$CategoryNewsInitialImpl>
    implements _$$CategoryNewsInitialImplCopyWith<$Res> {
  __$$CategoryNewsInitialImplCopyWithImpl(_$CategoryNewsInitialImpl _value,
      $Res Function(_$CategoryNewsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryNewsInitialImpl implements CategoryNewsInitial {
  const _$CategoryNewsInitialImpl();

  @override
  String toString() {
    return 'CategoryNewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryNewsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel category,
            List<CategoryNewsModel> news, int currentPage, bool isLastPage)
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
    TResult? Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
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
    required TResult Function(CategoryNewsInitial value) initial,
    required TResult Function(CategoryNewsLoading value) loading,
    required TResult Function(CategoryNewsLoaded value) loaded,
    required TResult Function(CategoryNewsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryNewsInitial value)? initial,
    TResult? Function(CategoryNewsLoading value)? loading,
    TResult? Function(CategoryNewsLoaded value)? loaded,
    TResult? Function(CategoryNewsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryNewsInitial value)? initial,
    TResult Function(CategoryNewsLoading value)? loading,
    TResult Function(CategoryNewsLoaded value)? loaded,
    TResult Function(CategoryNewsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryNewsInitial implements CategoryNewsState {
  const factory CategoryNewsInitial() = _$CategoryNewsInitialImpl;
}

/// @nodoc
abstract class _$$CategoryNewsLoadingImplCopyWith<$Res> {
  factory _$$CategoryNewsLoadingImplCopyWith(_$CategoryNewsLoadingImpl value,
          $Res Function(_$CategoryNewsLoadingImpl) then) =
      __$$CategoryNewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryNewsLoadingImplCopyWithImpl<$Res>
    extends _$CategoryNewsStateCopyWithImpl<$Res, _$CategoryNewsLoadingImpl>
    implements _$$CategoryNewsLoadingImplCopyWith<$Res> {
  __$$CategoryNewsLoadingImplCopyWithImpl(_$CategoryNewsLoadingImpl _value,
      $Res Function(_$CategoryNewsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryNewsLoadingImpl implements CategoryNewsLoading {
  const _$CategoryNewsLoadingImpl();

  @override
  String toString() {
    return 'CategoryNewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryNewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel category,
            List<CategoryNewsModel> news, int currentPage, bool isLastPage)
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
    TResult? Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
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
    required TResult Function(CategoryNewsInitial value) initial,
    required TResult Function(CategoryNewsLoading value) loading,
    required TResult Function(CategoryNewsLoaded value) loaded,
    required TResult Function(CategoryNewsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryNewsInitial value)? initial,
    TResult? Function(CategoryNewsLoading value)? loading,
    TResult? Function(CategoryNewsLoaded value)? loaded,
    TResult? Function(CategoryNewsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryNewsInitial value)? initial,
    TResult Function(CategoryNewsLoading value)? loading,
    TResult Function(CategoryNewsLoaded value)? loaded,
    TResult Function(CategoryNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryNewsLoading implements CategoryNewsState {
  const factory CategoryNewsLoading() = _$CategoryNewsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryNewsLoadedImplCopyWith<$Res> {
  factory _$$CategoryNewsLoadedImplCopyWith(_$CategoryNewsLoadedImpl value,
          $Res Function(_$CategoryNewsLoadedImpl) then) =
      __$$CategoryNewsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CategoryModel category,
      List<CategoryNewsModel> news,
      int currentPage,
      bool isLastPage});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryNewsLoadedImplCopyWithImpl<$Res>
    extends _$CategoryNewsStateCopyWithImpl<$Res, _$CategoryNewsLoadedImpl>
    implements _$$CategoryNewsLoadedImplCopyWith<$Res> {
  __$$CategoryNewsLoadedImplCopyWithImpl(_$CategoryNewsLoadedImpl _value,
      $Res Function(_$CategoryNewsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? news = null,
    Object? currentPage = null,
    Object? isLastPage = null,
  }) {
    return _then(_$CategoryNewsLoadedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<CategoryNewsModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategoryNewsLoadedImpl implements CategoryNewsLoaded {
  const _$CategoryNewsLoadedImpl(
      {required this.category,
      required final List<CategoryNewsModel> news,
      required this.currentPage,
      required this.isLastPage})
      : _news = news;

  @override
  final CategoryModel category;
  final List<CategoryNewsModel> _news;
  @override
  List<CategoryNewsModel> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  final int currentPage;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'CategoryNewsState.loaded(category: $category, news: $news, currentPage: $currentPage, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryNewsLoadedImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category,
      const DeepCollectionEquality().hash(_news), currentPage, isLastPage);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryNewsLoadedImplCopyWith<_$CategoryNewsLoadedImpl> get copyWith =>
      __$$CategoryNewsLoadedImplCopyWithImpl<_$CategoryNewsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel category,
            List<CategoryNewsModel> news, int currentPage, bool isLastPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(category, news, currentPage, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(category, news, currentPage, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(category, news, currentPage, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryNewsInitial value) initial,
    required TResult Function(CategoryNewsLoading value) loading,
    required TResult Function(CategoryNewsLoaded value) loaded,
    required TResult Function(CategoryNewsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryNewsInitial value)? initial,
    TResult? Function(CategoryNewsLoading value)? loading,
    TResult? Function(CategoryNewsLoaded value)? loaded,
    TResult? Function(CategoryNewsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryNewsInitial value)? initial,
    TResult Function(CategoryNewsLoading value)? loading,
    TResult Function(CategoryNewsLoaded value)? loaded,
    TResult Function(CategoryNewsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryNewsLoaded implements CategoryNewsState {
  const factory CategoryNewsLoaded(
      {required final CategoryModel category,
      required final List<CategoryNewsModel> news,
      required final int currentPage,
      required final bool isLastPage}) = _$CategoryNewsLoadedImpl;

  CategoryModel get category;
  List<CategoryNewsModel> get news;
  int get currentPage;
  bool get isLastPage;

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryNewsLoadedImplCopyWith<_$CategoryNewsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryNewsErrorImplCopyWith<$Res> {
  factory _$$CategoryNewsErrorImplCopyWith(_$CategoryNewsErrorImpl value,
          $Res Function(_$CategoryNewsErrorImpl) then) =
      __$$CategoryNewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CategoryNewsErrorImplCopyWithImpl<$Res>
    extends _$CategoryNewsStateCopyWithImpl<$Res, _$CategoryNewsErrorImpl>
    implements _$$CategoryNewsErrorImplCopyWith<$Res> {
  __$$CategoryNewsErrorImplCopyWithImpl(_$CategoryNewsErrorImpl _value,
      $Res Function(_$CategoryNewsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CategoryNewsErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryNewsErrorImpl implements CategoryNewsError {
  const _$CategoryNewsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryNewsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryNewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryNewsErrorImplCopyWith<_$CategoryNewsErrorImpl> get copyWith =>
      __$$CategoryNewsErrorImplCopyWithImpl<_$CategoryNewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel category,
            List<CategoryNewsModel> news, int currentPage, bool isLastPage)
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
    TResult? Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel category, List<CategoryNewsModel> news,
            int currentPage, bool isLastPage)?
        loaded,
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
    required TResult Function(CategoryNewsInitial value) initial,
    required TResult Function(CategoryNewsLoading value) loading,
    required TResult Function(CategoryNewsLoaded value) loaded,
    required TResult Function(CategoryNewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryNewsInitial value)? initial,
    TResult? Function(CategoryNewsLoading value)? loading,
    TResult? Function(CategoryNewsLoaded value)? loaded,
    TResult? Function(CategoryNewsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryNewsInitial value)? initial,
    TResult Function(CategoryNewsLoading value)? loading,
    TResult Function(CategoryNewsLoaded value)? loaded,
    TResult Function(CategoryNewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryNewsError implements CategoryNewsState {
  const factory CategoryNewsError(final String message) =
      _$CategoryNewsErrorImpl;

  String get message;

  /// Create a copy of CategoryNewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryNewsErrorImplCopyWith<_$CategoryNewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
