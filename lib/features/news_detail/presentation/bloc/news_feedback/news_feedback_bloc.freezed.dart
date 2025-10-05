// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsFeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) fetch,
    required TResult Function(String newsId, String comment) commentSubmitted,
    required TResult Function() likePressed,
    required TResult Function() dislikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? fetch,
    TResult? Function(String newsId, String comment)? commentSubmitted,
    TResult? Function()? likePressed,
    TResult? Function()? dislikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? fetch,
    TResult Function(String newsId, String comment)? commentSubmitted,
    TResult Function()? likePressed,
    TResult Function()? dislikePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeedback value) fetch,
    required TResult Function(_CommentSubmitted value) commentSubmitted,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DislikePressed value) dislikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeedback value)? fetch,
    TResult? Function(_CommentSubmitted value)? commentSubmitted,
    TResult? Function(_LikePressed value)? likePressed,
    TResult? Function(_DislikePressed value)? dislikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeedback value)? fetch,
    TResult Function(_CommentSubmitted value)? commentSubmitted,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DislikePressed value)? dislikePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedbackEventCopyWith<$Res> {
  factory $NewsFeedbackEventCopyWith(
          NewsFeedbackEvent value, $Res Function(NewsFeedbackEvent) then) =
      _$NewsFeedbackEventCopyWithImpl<$Res, NewsFeedbackEvent>;
}

/// @nodoc
class _$NewsFeedbackEventCopyWithImpl<$Res, $Val extends NewsFeedbackEvent>
    implements $NewsFeedbackEventCopyWith<$Res> {
  _$NewsFeedbackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchFeedbackImplCopyWith<$Res> {
  factory _$$FetchFeedbackImplCopyWith(
          _$FetchFeedbackImpl value, $Res Function(_$FetchFeedbackImpl) then) =
      __$$FetchFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newsId});
}

/// @nodoc
class __$$FetchFeedbackImplCopyWithImpl<$Res>
    extends _$NewsFeedbackEventCopyWithImpl<$Res, _$FetchFeedbackImpl>
    implements _$$FetchFeedbackImplCopyWith<$Res> {
  __$$FetchFeedbackImplCopyWithImpl(
      _$FetchFeedbackImpl _value, $Res Function(_$FetchFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
  }) {
    return _then(_$FetchFeedbackImpl(
      null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFeedbackImpl implements _FetchFeedback {
  const _$FetchFeedbackImpl(this.newsId);

  @override
  final String newsId;

  @override
  String toString() {
    return 'NewsFeedbackEvent.fetch(newsId: $newsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFeedbackImpl &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsId);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFeedbackImplCopyWith<_$FetchFeedbackImpl> get copyWith =>
      __$$FetchFeedbackImplCopyWithImpl<_$FetchFeedbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) fetch,
    required TResult Function(String newsId, String comment) commentSubmitted,
    required TResult Function() likePressed,
    required TResult Function() dislikePressed,
  }) {
    return fetch(newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? fetch,
    TResult? Function(String newsId, String comment)? commentSubmitted,
    TResult? Function()? likePressed,
    TResult? Function()? dislikePressed,
  }) {
    return fetch?.call(newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? fetch,
    TResult Function(String newsId, String comment)? commentSubmitted,
    TResult Function()? likePressed,
    TResult Function()? dislikePressed,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeedback value) fetch,
    required TResult Function(_CommentSubmitted value) commentSubmitted,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DislikePressed value) dislikePressed,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeedback value)? fetch,
    TResult? Function(_CommentSubmitted value)? commentSubmitted,
    TResult? Function(_LikePressed value)? likePressed,
    TResult? Function(_DislikePressed value)? dislikePressed,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeedback value)? fetch,
    TResult Function(_CommentSubmitted value)? commentSubmitted,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DislikePressed value)? dislikePressed,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchFeedback implements NewsFeedbackEvent {
  const factory _FetchFeedback(final String newsId) = _$FetchFeedbackImpl;

  String get newsId;

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFeedbackImplCopyWith<_$FetchFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentSubmittedImplCopyWith<$Res> {
  factory _$$CommentSubmittedImplCopyWith(_$CommentSubmittedImpl value,
          $Res Function(_$CommentSubmittedImpl) then) =
      __$$CommentSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newsId, String comment});
}

/// @nodoc
class __$$CommentSubmittedImplCopyWithImpl<$Res>
    extends _$NewsFeedbackEventCopyWithImpl<$Res, _$CommentSubmittedImpl>
    implements _$$CommentSubmittedImplCopyWith<$Res> {
  __$$CommentSubmittedImplCopyWithImpl(_$CommentSubmittedImpl _value,
      $Res Function(_$CommentSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
    Object? comment = null,
  }) {
    return _then(_$CommentSubmittedImpl(
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentSubmittedImpl implements _CommentSubmitted {
  const _$CommentSubmittedImpl({required this.newsId, required this.comment});

  @override
  final String newsId;
  @override
  final String comment;

  @override
  String toString() {
    return 'NewsFeedbackEvent.commentSubmitted(newsId: $newsId, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentSubmittedImpl &&
            (identical(other.newsId, newsId) || other.newsId == newsId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsId, comment);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentSubmittedImplCopyWith<_$CommentSubmittedImpl> get copyWith =>
      __$$CommentSubmittedImplCopyWithImpl<_$CommentSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) fetch,
    required TResult Function(String newsId, String comment) commentSubmitted,
    required TResult Function() likePressed,
    required TResult Function() dislikePressed,
  }) {
    return commentSubmitted(newsId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? fetch,
    TResult? Function(String newsId, String comment)? commentSubmitted,
    TResult? Function()? likePressed,
    TResult? Function()? dislikePressed,
  }) {
    return commentSubmitted?.call(newsId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? fetch,
    TResult Function(String newsId, String comment)? commentSubmitted,
    TResult Function()? likePressed,
    TResult Function()? dislikePressed,
    required TResult orElse(),
  }) {
    if (commentSubmitted != null) {
      return commentSubmitted(newsId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeedback value) fetch,
    required TResult Function(_CommentSubmitted value) commentSubmitted,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DislikePressed value) dislikePressed,
  }) {
    return commentSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeedback value)? fetch,
    TResult? Function(_CommentSubmitted value)? commentSubmitted,
    TResult? Function(_LikePressed value)? likePressed,
    TResult? Function(_DislikePressed value)? dislikePressed,
  }) {
    return commentSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeedback value)? fetch,
    TResult Function(_CommentSubmitted value)? commentSubmitted,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DislikePressed value)? dislikePressed,
    required TResult orElse(),
  }) {
    if (commentSubmitted != null) {
      return commentSubmitted(this);
    }
    return orElse();
  }
}

abstract class _CommentSubmitted implements NewsFeedbackEvent {
  const factory _CommentSubmitted(
      {required final String newsId,
      required final String comment}) = _$CommentSubmittedImpl;

  String get newsId;
  String get comment;

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentSubmittedImplCopyWith<_$CommentSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikePressedImplCopyWith<$Res> {
  factory _$$LikePressedImplCopyWith(
          _$LikePressedImpl value, $Res Function(_$LikePressedImpl) then) =
      __$$LikePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LikePressedImplCopyWithImpl<$Res>
    extends _$NewsFeedbackEventCopyWithImpl<$Res, _$LikePressedImpl>
    implements _$$LikePressedImplCopyWith<$Res> {
  __$$LikePressedImplCopyWithImpl(
      _$LikePressedImpl _value, $Res Function(_$LikePressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LikePressedImpl implements _LikePressed {
  const _$LikePressedImpl();

  @override
  String toString() {
    return 'NewsFeedbackEvent.likePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LikePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) fetch,
    required TResult Function(String newsId, String comment) commentSubmitted,
    required TResult Function() likePressed,
    required TResult Function() dislikePressed,
  }) {
    return likePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? fetch,
    TResult? Function(String newsId, String comment)? commentSubmitted,
    TResult? Function()? likePressed,
    TResult? Function()? dislikePressed,
  }) {
    return likePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? fetch,
    TResult Function(String newsId, String comment)? commentSubmitted,
    TResult Function()? likePressed,
    TResult Function()? dislikePressed,
    required TResult orElse(),
  }) {
    if (likePressed != null) {
      return likePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeedback value) fetch,
    required TResult Function(_CommentSubmitted value) commentSubmitted,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DislikePressed value) dislikePressed,
  }) {
    return likePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeedback value)? fetch,
    TResult? Function(_CommentSubmitted value)? commentSubmitted,
    TResult? Function(_LikePressed value)? likePressed,
    TResult? Function(_DislikePressed value)? dislikePressed,
  }) {
    return likePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeedback value)? fetch,
    TResult Function(_CommentSubmitted value)? commentSubmitted,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DislikePressed value)? dislikePressed,
    required TResult orElse(),
  }) {
    if (likePressed != null) {
      return likePressed(this);
    }
    return orElse();
  }
}

abstract class _LikePressed implements NewsFeedbackEvent {
  const factory _LikePressed() = _$LikePressedImpl;
}

/// @nodoc
abstract class _$$DislikePressedImplCopyWith<$Res> {
  factory _$$DislikePressedImplCopyWith(_$DislikePressedImpl value,
          $Res Function(_$DislikePressedImpl) then) =
      __$$DislikePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DislikePressedImplCopyWithImpl<$Res>
    extends _$NewsFeedbackEventCopyWithImpl<$Res, _$DislikePressedImpl>
    implements _$$DislikePressedImplCopyWith<$Res> {
  __$$DislikePressedImplCopyWithImpl(
      _$DislikePressedImpl _value, $Res Function(_$DislikePressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DislikePressedImpl implements _DislikePressed {
  const _$DislikePressedImpl();

  @override
  String toString() {
    return 'NewsFeedbackEvent.dislikePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DislikePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) fetch,
    required TResult Function(String newsId, String comment) commentSubmitted,
    required TResult Function() likePressed,
    required TResult Function() dislikePressed,
  }) {
    return dislikePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? fetch,
    TResult? Function(String newsId, String comment)? commentSubmitted,
    TResult? Function()? likePressed,
    TResult? Function()? dislikePressed,
  }) {
    return dislikePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? fetch,
    TResult Function(String newsId, String comment)? commentSubmitted,
    TResult Function()? likePressed,
    TResult Function()? dislikePressed,
    required TResult orElse(),
  }) {
    if (dislikePressed != null) {
      return dislikePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeedback value) fetch,
    required TResult Function(_CommentSubmitted value) commentSubmitted,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DislikePressed value) dislikePressed,
  }) {
    return dislikePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeedback value)? fetch,
    TResult? Function(_CommentSubmitted value)? commentSubmitted,
    TResult? Function(_LikePressed value)? likePressed,
    TResult? Function(_DislikePressed value)? dislikePressed,
  }) {
    return dislikePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeedback value)? fetch,
    TResult Function(_CommentSubmitted value)? commentSubmitted,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DislikePressed value)? dislikePressed,
    required TResult orElse(),
  }) {
    if (dislikePressed != null) {
      return dislikePressed(this);
    }
    return orElse();
  }
}

abstract class _DislikePressed implements NewsFeedbackEvent {
  const factory _DislikePressed() = _$DislikePressedImpl;
}

/// @nodoc
mixin _$NewsFeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedbackStateCopyWith<$Res> {
  factory $NewsFeedbackStateCopyWith(
          NewsFeedbackState value, $Res Function(NewsFeedbackState) then) =
      _$NewsFeedbackStateCopyWithImpl<$Res, NewsFeedbackState>;
}

/// @nodoc
class _$NewsFeedbackStateCopyWithImpl<$Res, $Val extends NewsFeedbackState>
    implements $NewsFeedbackStateCopyWith<$Res> {
  _$NewsFeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsFeedbackStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NewsFeedbackState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewsFeedbackState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NewsFeedbackStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NewsFeedbackState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsFeedbackState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedbackModel feedback});

  $FeedbackModelCopyWith<$Res> get feedback;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NewsFeedbackStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$LoadedImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
    ));
  }

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res> get feedback {
    return $FeedbackModelCopyWith<$Res>(_value.feedback, (value) {
      return _then(_value.copyWith(feedback: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.feedback);

  @override
  final FeedbackModel feedback;

  @override
  String toString() {
    return 'NewsFeedbackState.loaded(feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NewsFeedbackState {
  const factory _Loaded(final FeedbackModel feedback) = _$LoadedImpl;

  FeedbackModel get feedback;

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
          _$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) =
      __$$SubmittingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedbackModel feedback});

  $FeedbackModelCopyWith<$Res> get feedback;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$NewsFeedbackStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
      _$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$SubmittingImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as FeedbackModel,
    ));
  }

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackModelCopyWith<$Res> get feedback {
    return $FeedbackModelCopyWith<$Res>(_value.feedback, (value) {
      return _then(_value.copyWith(feedback: value));
    });
  }
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl(this.feedback);

  @override
  final FeedbackModel feedback;

  @override
  String toString() {
    return 'NewsFeedbackState.submitting(feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittingImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      __$$SubmittingImplCopyWithImpl<_$SubmittingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) {
    return submitting(feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) {
    return submitting?.call(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements NewsFeedbackState {
  const factory _Submitting(final FeedbackModel feedback) = _$SubmittingImpl;

  FeedbackModel get feedback;

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NewsFeedbackStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NewsFeedbackState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackModel feedback) loaded,
    required TResult Function(FeedbackModel feedback) submitting,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackModel feedback)? loaded,
    TResult? Function(FeedbackModel feedback)? submitting,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackModel feedback)? loaded,
    TResult Function(FeedbackModel feedback)? submitting,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NewsFeedbackState {
  const factory _Error(final Failure failure) = _$ErrorImpl;

  Failure get failure;

  /// Create a copy of NewsFeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
