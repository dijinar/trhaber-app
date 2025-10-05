// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_navigation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuNavigationModel {
  String get title => throw _privateConstructorUsedError;
  Map<String, String> get items => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<MenuNavigationModel>? get children => throw _privateConstructorUsedError;

  /// Create a copy of MenuNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuNavigationModelCopyWith<MenuNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuNavigationModelCopyWith<$Res> {
  factory $MenuNavigationModelCopyWith(
          MenuNavigationModel value, $Res Function(MenuNavigationModel) then) =
      _$MenuNavigationModelCopyWithImpl<$Res, MenuNavigationModel>;
  @useResult
  $Res call(
      {String title,
      Map<String, String> items,
      String? id,
      List<MenuNavigationModel>? children});
}

/// @nodoc
class _$MenuNavigationModelCopyWithImpl<$Res, $Val extends MenuNavigationModel>
    implements $MenuNavigationModelCopyWith<$Res> {
  _$MenuNavigationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
    Object? id = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MenuNavigationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuNavigationModelImplCopyWith<$Res>
    implements $MenuNavigationModelCopyWith<$Res> {
  factory _$$MenuNavigationModelImplCopyWith(_$MenuNavigationModelImpl value,
          $Res Function(_$MenuNavigationModelImpl) then) =
      __$$MenuNavigationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      Map<String, String> items,
      String? id,
      List<MenuNavigationModel>? children});
}

/// @nodoc
class __$$MenuNavigationModelImplCopyWithImpl<$Res>
    extends _$MenuNavigationModelCopyWithImpl<$Res, _$MenuNavigationModelImpl>
    implements _$$MenuNavigationModelImplCopyWith<$Res> {
  __$$MenuNavigationModelImplCopyWithImpl(_$MenuNavigationModelImpl _value,
      $Res Function(_$MenuNavigationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
    Object? id = freezed,
    Object? children = freezed,
  }) {
    return _then(_$MenuNavigationModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<MenuNavigationModel>?,
    ));
  }
}

/// @nodoc

class _$MenuNavigationModelImpl implements _MenuNavigationModel {
  const _$MenuNavigationModelImpl(
      {required this.title,
      required final Map<String, String> items,
      this.id,
      final List<MenuNavigationModel>? children})
      : _items = items,
        _children = children;

  @override
  final String title;
  final Map<String, String> _items;
  @override
  Map<String, String> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  final String? id;
  final List<MenuNavigationModel>? _children;
  @override
  List<MenuNavigationModel>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MenuNavigationModel(title: $title, items: $items, id: $id, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuNavigationModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_items),
      id,
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of MenuNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuNavigationModelImplCopyWith<_$MenuNavigationModelImpl> get copyWith =>
      __$$MenuNavigationModelImplCopyWithImpl<_$MenuNavigationModelImpl>(
          this, _$identity);
}

abstract class _MenuNavigationModel implements MenuNavigationModel {
  const factory _MenuNavigationModel(
      {required final String title,
      required final Map<String, String> items,
      final String? id,
      final List<MenuNavigationModel>? children}) = _$MenuNavigationModelImpl;

  @override
  String get title;
  @override
  Map<String, String> get items;
  @override
  String? get id;
  @override
  List<MenuNavigationModel>? get children;

  /// Create a copy of MenuNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuNavigationModelImplCopyWith<_$MenuNavigationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
