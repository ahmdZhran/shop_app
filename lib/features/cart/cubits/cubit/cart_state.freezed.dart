// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartInitialImplCopyWith<$Res> {
  factory _$$CartInitialImplCopyWith(
          _$CartInitialImpl value, $Res Function(_$CartInitialImpl) then) =
      __$$CartInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartInitialImpl>
    implements _$$CartInitialImplCopyWith<$Res> {
  __$$CartInitialImplCopyWithImpl(
      _$CartInitialImpl _value, $Res Function(_$CartInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitialImpl implements _CartInitial {
  const _$CartInitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartInitial implements CartState {
  const factory _CartInitial() = _$CartInitialImpl;
}

/// @nodoc
abstract class _$$CartSuccessImplCopyWith<$Res> {
  factory _$$CartSuccessImplCopyWith(
          _$CartSuccessImpl value, $Res Function(_$CartSuccessImpl) then) =
      __$$CartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> cartItems});
}

/// @nodoc
class __$$CartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartSuccessImpl>
    implements _$$CartSuccessImplCopyWith<$Res> {
  __$$CartSuccessImplCopyWithImpl(
      _$CartSuccessImpl _value, $Res Function(_$CartSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartSuccessImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$CartSuccessImpl implements _CartSuccess {
  const _$CartSuccessImpl(final List<CartItemModel> cartItems)
      : _cartItems = cartItems;

  final List<CartItemModel> _cartItems;
  @override
  List<CartItemModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.cartSuccess(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      __$$CartSuccessImplCopyWithImpl<_$CartSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) {
    return cartSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) {
    return cartSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cartSuccess != null) {
      return cartSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) {
    return cartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) {
    return cartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cartSuccess != null) {
      return cartSuccess(this);
    }
    return orElse();
  }
}

abstract class _CartSuccess implements CartState {
  const factory _CartSuccess(final List<CartItemModel> cartItems) =
      _$CartSuccessImpl;

  List<CartItemModel> get cartItems;
  @JsonKey(ignore: true)
  _$$CartSuccessImplCopyWith<_$CartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemAddedImplCopyWith<$Res> {
  factory _$$CartItemAddedImplCopyWith(
          _$CartItemAddedImpl value, $Res Function(_$CartItemAddedImpl) then) =
      __$$CartItemAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> cartItems});
}

/// @nodoc
class __$$CartItemAddedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemAddedImpl>
    implements _$$CartItemAddedImplCopyWith<$Res> {
  __$$CartItemAddedImplCopyWithImpl(
      _$CartItemAddedImpl _value, $Res Function(_$CartItemAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartItemAddedImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$CartItemAddedImpl implements _CartItemAdded {
  const _$CartItemAddedImpl(final List<CartItemModel> cartItems)
      : _cartItems = cartItems;

  final List<CartItemModel> _cartItems;
  @override
  List<CartItemModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.itemAdded(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemAddedImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemAddedImplCopyWith<_$CartItemAddedImpl> get copyWith =>
      __$$CartItemAddedImplCopyWithImpl<_$CartItemAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) {
    return itemAdded(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) {
    return itemAdded?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class _CartItemAdded implements CartState {
  const factory _CartItemAdded(final List<CartItemModel> cartItems) =
      _$CartItemAddedImpl;

  List<CartItemModel> get cartItems;
  @JsonKey(ignore: true)
  _$$CartItemAddedImplCopyWith<_$CartItemAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemDeletedImplCopyWith<$Res> {
  factory _$$CartItemDeletedImplCopyWith(_$CartItemDeletedImpl value,
          $Res Function(_$CartItemDeletedImpl) then) =
      __$$CartItemDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> cartItems});
}

/// @nodoc
class __$$CartItemDeletedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemDeletedImpl>
    implements _$$CartItemDeletedImplCopyWith<$Res> {
  __$$CartItemDeletedImplCopyWithImpl(
      _$CartItemDeletedImpl _value, $Res Function(_$CartItemDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartItemDeletedImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$CartItemDeletedImpl implements _CartItemDeleted {
  const _$CartItemDeletedImpl(final List<CartItemModel> cartItems)
      : _cartItems = cartItems;

  final List<CartItemModel> _cartItems;
  @override
  List<CartItemModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.itemDeleted(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemDeletedImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemDeletedImplCopyWith<_$CartItemDeletedImpl> get copyWith =>
      __$$CartItemDeletedImplCopyWithImpl<_$CartItemDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) {
    return itemDeleted(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) {
    return itemDeleted?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (itemDeleted != null) {
      return itemDeleted(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) {
    return itemDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) {
    return itemDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (itemDeleted != null) {
      return itemDeleted(this);
    }
    return orElse();
  }
}

abstract class _CartItemDeleted implements CartState {
  const factory _CartItemDeleted(final List<CartItemModel> cartItems) =
      _$CartItemDeletedImpl;

  List<CartItemModel> get cartItems;
  @JsonKey(ignore: true)
  _$$CartItemDeletedImplCopyWith<_$CartItemDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartClearedImplCopyWith<$Res> {
  factory _$$CartClearedImplCopyWith(
          _$CartClearedImpl value, $Res Function(_$CartClearedImpl) then) =
      __$$CartClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartClearedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartClearedImpl>
    implements _$$CartClearedImplCopyWith<$Res> {
  __$$CartClearedImplCopyWithImpl(
      _$CartClearedImpl _value, $Res Function(_$CartClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartClearedImpl implements _CartCleared {
  const _$CartClearedImpl();

  @override
  String toString() {
    return 'CartState.cleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(List<CartItemModel> cartItems) itemDeleted,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult? Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(List<CartItemModel> cartItems)? itemDeleted,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartItemDeleted value) itemDeleted,
    required TResult Function(_CartCleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartItemDeleted value)? itemDeleted,
    TResult? Function(_CartCleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartItemDeleted value)? itemDeleted,
    TResult Function(_CartCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _CartCleared implements CartState {
  const factory _CartCleared() = _$CartClearedImpl;
}
