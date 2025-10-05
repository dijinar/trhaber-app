// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) {
  return _AuthorModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get lastArticleTitle => throw _privateConstructorUsedError;
  String get lastArticleDate => throw _privateConstructorUsedError;
  String get canonical =>
      throw _privateConstructorUsedError; // Profil sayfasına özel alanlar
  String? get bio => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError; // Tüm yazılar
  List<ArticleModel>? get articles => throw _privateConstructorUsedError;

  /// Serializes this AuthorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorModelCopyWith<AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorModelCopyWith<$Res> {
  factory $AuthorModelCopyWith(
          AuthorModel value, $Res Function(AuthorModel) then) =
      _$AuthorModelCopyWithImpl<$Res, AuthorModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String lastArticleTitle,
      String lastArticleDate,
      String canonical,
      String? bio,
      String? instagram,
      String? twitter,
      String? facebook,
      String? whatsapp,
      List<ArticleModel>? articles});
}

/// @nodoc
class _$AuthorModelCopyWithImpl<$Res, $Val extends AuthorModel>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? lastArticleTitle = null,
    Object? lastArticleDate = null,
    Object? canonical = null,
    Object? bio = freezed,
    Object? instagram = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? whatsapp = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lastArticleTitle: null == lastArticleTitle
          ? _value.lastArticleTitle
          : lastArticleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastArticleDate: null == lastArticleDate
          ? _value.lastArticleDate
          : lastArticleDate // ignore: cast_nullable_to_non_nullable
              as String,
      canonical: null == canonical
          ? _value.canonical
          : canonical // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorModelImplCopyWith<$Res>
    implements $AuthorModelCopyWith<$Res> {
  factory _$$AuthorModelImplCopyWith(
          _$AuthorModelImpl value, $Res Function(_$AuthorModelImpl) then) =
      __$$AuthorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String lastArticleTitle,
      String lastArticleDate,
      String canonical,
      String? bio,
      String? instagram,
      String? twitter,
      String? facebook,
      String? whatsapp,
      List<ArticleModel>? articles});
}

/// @nodoc
class __$$AuthorModelImplCopyWithImpl<$Res>
    extends _$AuthorModelCopyWithImpl<$Res, _$AuthorModelImpl>
    implements _$$AuthorModelImplCopyWith<$Res> {
  __$$AuthorModelImplCopyWithImpl(
      _$AuthorModelImpl _value, $Res Function(_$AuthorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? lastArticleTitle = null,
    Object? lastArticleDate = null,
    Object? canonical = null,
    Object? bio = freezed,
    Object? instagram = freezed,
    Object? twitter = freezed,
    Object? facebook = freezed,
    Object? whatsapp = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$AuthorModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lastArticleTitle: null == lastArticleTitle
          ? _value.lastArticleTitle
          : lastArticleTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastArticleDate: null == lastArticleDate
          ? _value.lastArticleDate
          : lastArticleDate // ignore: cast_nullable_to_non_nullable
              as String,
      canonical: null == canonical
          ? _value.canonical
          : canonical // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorModelImpl implements _AuthorModel {
  const _$AuthorModelImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.lastArticleTitle,
      required this.lastArticleDate,
      required this.canonical,
      this.bio,
      this.instagram,
      this.twitter,
      this.facebook,
      this.whatsapp,
      final List<ArticleModel>? articles})
      : _articles = articles;

  factory _$AuthorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String lastArticleTitle;
  @override
  final String lastArticleDate;
  @override
  final String canonical;
// Profil sayfasına özel alanlar
  @override
  final String? bio;
  @override
  final String? instagram;
  @override
  final String? twitter;
  @override
  final String? facebook;
  @override
  final String? whatsapp;
// Tüm yazılar
  final List<ArticleModel>? _articles;
// Tüm yazılar
  @override
  List<ArticleModel>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthorModel(id: $id, name: $name, image: $image, lastArticleTitle: $lastArticleTitle, lastArticleDate: $lastArticleDate, canonical: $canonical, bio: $bio, instagram: $instagram, twitter: $twitter, facebook: $facebook, whatsapp: $whatsapp, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lastArticleTitle, lastArticleTitle) ||
                other.lastArticleTitle == lastArticleTitle) &&
            (identical(other.lastArticleDate, lastArticleDate) ||
                other.lastArticleDate == lastArticleDate) &&
            (identical(other.canonical, canonical) ||
                other.canonical == canonical) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      lastArticleTitle,
      lastArticleDate,
      canonical,
      bio,
      instagram,
      twitter,
      facebook,
      whatsapp,
      const DeepCollectionEquality().hash(_articles));

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorModelImplCopyWith<_$AuthorModelImpl> get copyWith =>
      __$$AuthorModelImplCopyWithImpl<_$AuthorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorModelImplToJson(
      this,
    );
  }
}

abstract class _AuthorModel implements AuthorModel {
  const factory _AuthorModel(
      {required final String id,
      required final String name,
      required final String image,
      required final String lastArticleTitle,
      required final String lastArticleDate,
      required final String canonical,
      final String? bio,
      final String? instagram,
      final String? twitter,
      final String? facebook,
      final String? whatsapp,
      final List<ArticleModel>? articles}) = _$AuthorModelImpl;

  factory _AuthorModel.fromJson(Map<String, dynamic> json) =
      _$AuthorModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get lastArticleTitle;
  @override
  String get lastArticleDate;
  @override
  String get canonical; // Profil sayfasına özel alanlar
  @override
  String? get bio;
  @override
  String? get instagram;
  @override
  String? get twitter;
  @override
  String? get facebook;
  @override
  String? get whatsapp; // Tüm yazılar
  @override
  List<ArticleModel>? get articles;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorModelImplCopyWith<_$AuthorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
