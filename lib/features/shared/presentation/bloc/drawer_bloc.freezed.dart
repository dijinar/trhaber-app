// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) navigateToPage,
    required TResult Function() closeDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? navigateToPage,
    TResult? Function()? closeDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? navigateToPage,
    TResult Function()? closeDrawer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(CloseDrawer value) closeDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateToPage value)? navigateToPage,
    TResult? Function(CloseDrawer value)? closeDrawer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(CloseDrawer value)? closeDrawer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res, DrawerEvent>;
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res, $Val extends DrawerEvent>
    implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateToPageImplCopyWith<$Res> {
  factory _$$NavigateToPageImplCopyWith(_$NavigateToPageImpl value,
          $Res Function(_$NavigateToPageImpl) then) =
      __$$NavigateToPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$NavigateToPageImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$NavigateToPageImpl>
    implements _$$NavigateToPageImplCopyWith<$Res> {
  __$$NavigateToPageImplCopyWithImpl(
      _$NavigateToPageImpl _value, $Res Function(_$NavigateToPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$NavigateToPageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigateToPageImpl implements NavigateToPage {
  const _$NavigateToPageImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawerEvent.navigateToPage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToPageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToPageImplCopyWith<_$NavigateToPageImpl> get copyWith =>
      __$$NavigateToPageImplCopyWithImpl<_$NavigateToPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) navigateToPage,
    required TResult Function() closeDrawer,
  }) {
    return navigateToPage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? navigateToPage,
    TResult? Function()? closeDrawer,
  }) {
    return navigateToPage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? navigateToPage,
    TResult Function()? closeDrawer,
    required TResult orElse(),
  }) {
    if (navigateToPage != null) {
      return navigateToPage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(CloseDrawer value) closeDrawer,
  }) {
    return navigateToPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateToPage value)? navigateToPage,
    TResult? Function(CloseDrawer value)? closeDrawer,
  }) {
    return navigateToPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(CloseDrawer value)? closeDrawer,
    required TResult orElse(),
  }) {
    if (navigateToPage != null) {
      return navigateToPage(this);
    }
    return orElse();
  }
}

abstract class NavigateToPage implements DrawerEvent {
  const factory NavigateToPage(final int index) = _$NavigateToPageImpl;

  int get index;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToPageImplCopyWith<_$NavigateToPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseDrawerImplCopyWith<$Res> {
  factory _$$CloseDrawerImplCopyWith(
          _$CloseDrawerImpl value, $Res Function(_$CloseDrawerImpl) then) =
      __$$CloseDrawerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseDrawerImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$CloseDrawerImpl>
    implements _$$CloseDrawerImplCopyWith<$Res> {
  __$$CloseDrawerImplCopyWithImpl(
      _$CloseDrawerImpl _value, $Res Function(_$CloseDrawerImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseDrawerImpl implements CloseDrawer {
  const _$CloseDrawerImpl();

  @override
  String toString() {
    return 'DrawerEvent.closeDrawer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseDrawerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) navigateToPage,
    required TResult Function() closeDrawer,
  }) {
    return closeDrawer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? navigateToPage,
    TResult? Function()? closeDrawer,
  }) {
    return closeDrawer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? navigateToPage,
    TResult Function()? closeDrawer,
    required TResult orElse(),
  }) {
    if (closeDrawer != null) {
      return closeDrawer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToPage value) navigateToPage,
    required TResult Function(CloseDrawer value) closeDrawer,
  }) {
    return closeDrawer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateToPage value)? navigateToPage,
    TResult? Function(CloseDrawer value)? closeDrawer,
  }) {
    return closeDrawer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToPage value)? navigateToPage,
    TResult Function(CloseDrawer value)? closeDrawer,
    required TResult orElse(),
  }) {
    if (closeDrawer != null) {
      return closeDrawer(this);
    }
    return orElse();
  }
}

abstract class CloseDrawer implements DrawerEvent {
  const factory CloseDrawer() = _$CloseDrawerImpl;
}

/// @nodoc
mixin _$DrawerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) navigating,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? navigating,
    TResult? Function()? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? navigating,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawerInitial value) initial,
    required TResult Function(DrawerNavigating value) navigating,
    required TResult Function(DrawerClosed value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DrawerInitial value)? initial,
    TResult? Function(DrawerNavigating value)? navigating,
    TResult? Function(DrawerClosed value)? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawerInitial value)? initial,
    TResult Function(DrawerNavigating value)? navigating,
    TResult Function(DrawerClosed value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DrawerInitialImplCopyWith<$Res> {
  factory _$$DrawerInitialImplCopyWith(
          _$DrawerInitialImpl value, $Res Function(_$DrawerInitialImpl) then) =
      __$$DrawerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawerInitialImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerInitialImpl>
    implements _$$DrawerInitialImplCopyWith<$Res> {
  __$$DrawerInitialImplCopyWithImpl(
      _$DrawerInitialImpl _value, $Res Function(_$DrawerInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DrawerInitialImpl implements DrawerInitial {
  const _$DrawerInitialImpl();

  @override
  String toString() {
    return 'DrawerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DrawerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) navigating,
    required TResult Function() closed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? navigating,
    TResult? Function()? closed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? navigating,
    TResult Function()? closed,
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
    required TResult Function(DrawerInitial value) initial,
    required TResult Function(DrawerNavigating value) navigating,
    required TResult Function(DrawerClosed value) closed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DrawerInitial value)? initial,
    TResult? Function(DrawerNavigating value)? navigating,
    TResult? Function(DrawerClosed value)? closed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawerInitial value)? initial,
    TResult Function(DrawerNavigating value)? navigating,
    TResult Function(DrawerClosed value)? closed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DrawerInitial implements DrawerState {
  const factory DrawerInitial() = _$DrawerInitialImpl;
}

/// @nodoc
abstract class _$$DrawerNavigatingImplCopyWith<$Res> {
  factory _$$DrawerNavigatingImplCopyWith(_$DrawerNavigatingImpl value,
          $Res Function(_$DrawerNavigatingImpl) then) =
      __$$DrawerNavigatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DrawerNavigatingImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerNavigatingImpl>
    implements _$$DrawerNavigatingImplCopyWith<$Res> {
  __$$DrawerNavigatingImplCopyWithImpl(_$DrawerNavigatingImpl _value,
      $Res Function(_$DrawerNavigatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DrawerNavigatingImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DrawerNavigatingImpl implements DrawerNavigating {
  const _$DrawerNavigatingImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DrawerState.navigating(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerNavigatingImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerNavigatingImplCopyWith<_$DrawerNavigatingImpl> get copyWith =>
      __$$DrawerNavigatingImplCopyWithImpl<_$DrawerNavigatingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) navigating,
    required TResult Function() closed,
  }) {
    return navigating(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? navigating,
    TResult? Function()? closed,
  }) {
    return navigating?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? navigating,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (navigating != null) {
      return navigating(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawerInitial value) initial,
    required TResult Function(DrawerNavigating value) navigating,
    required TResult Function(DrawerClosed value) closed,
  }) {
    return navigating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DrawerInitial value)? initial,
    TResult? Function(DrawerNavigating value)? navigating,
    TResult? Function(DrawerClosed value)? closed,
  }) {
    return navigating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawerInitial value)? initial,
    TResult Function(DrawerNavigating value)? navigating,
    TResult Function(DrawerClosed value)? closed,
    required TResult orElse(),
  }) {
    if (navigating != null) {
      return navigating(this);
    }
    return orElse();
  }
}

abstract class DrawerNavigating implements DrawerState {
  const factory DrawerNavigating(final int index) = _$DrawerNavigatingImpl;

  int get index;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrawerNavigatingImplCopyWith<_$DrawerNavigatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrawerClosedImplCopyWith<$Res> {
  factory _$$DrawerClosedImplCopyWith(
          _$DrawerClosedImpl value, $Res Function(_$DrawerClosedImpl) then) =
      __$$DrawerClosedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DrawerClosedImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerClosedImpl>
    implements _$$DrawerClosedImplCopyWith<$Res> {
  __$$DrawerClosedImplCopyWithImpl(
      _$DrawerClosedImpl _value, $Res Function(_$DrawerClosedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DrawerClosedImpl implements DrawerClosed {
  const _$DrawerClosedImpl();

  @override
  String toString() {
    return 'DrawerState.closed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DrawerClosedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) navigating,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? navigating,
    TResult? Function()? closed,
  }) {
    return closed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? navigating,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DrawerInitial value) initial,
    required TResult Function(DrawerNavigating value) navigating,
    required TResult Function(DrawerClosed value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DrawerInitial value)? initial,
    TResult? Function(DrawerNavigating value)? navigating,
    TResult? Function(DrawerClosed value)? closed,
  }) {
    return closed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DrawerInitial value)? initial,
    TResult Function(DrawerNavigating value)? navigating,
    TResult Function(DrawerClosed value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class DrawerClosed implements DrawerState {
  const factory DrawerClosed() = _$DrawerClosedImpl;
}
