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
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
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
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
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
abstract class _$$CartLoadingImplCopyWith<$Res> {
  factory _$$CartLoadingImplCopyWith(
          _$CartLoadingImpl value, $Res Function(_$CartLoadingImpl) then) =
      __$$CartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingImpl>
    implements _$$CartLoadingImplCopyWith<$Res> {
  __$$CartLoadingImplCopyWithImpl(
      _$CartLoadingImpl _value, $Res Function(_$CartLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingImpl implements _CartLoading {
  const _$CartLoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoading implements CartState {
  const factory _CartLoading() = _$CartLoadingImpl;
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
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return cartSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return cartSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return cartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return cartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
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
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return itemAdded(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return itemAdded?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
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
abstract class _$$CartEmptyImplCopyWith<$Res> {
  factory _$$CartEmptyImplCopyWith(
          _$CartEmptyImpl value, $Res Function(_$CartEmptyImpl) then) =
      __$$CartEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartEmptyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartEmptyImpl>
    implements _$$CartEmptyImplCopyWith<$Res> {
  __$$CartEmptyImplCopyWithImpl(
      _$CartEmptyImpl _value, $Res Function(_$CartEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartEmptyImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartEmptyImpl implements _CartEmpty {
  const _$CartEmptyImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.cartEmpty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEmptyImplCopyWith<_$CartEmptyImpl> get copyWith =>
      __$$CartEmptyImplCopyWithImpl<_$CartEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return cartEmpty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return cartEmpty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
    required TResult orElse(),
  }) {
    if (cartEmpty != null) {
      return cartEmpty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return cartEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return cartEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
    required TResult orElse(),
  }) {
    if (cartEmpty != null) {
      return cartEmpty(this);
    }
    return orElse();
  }
}

abstract class _CartEmpty implements CartState {
  const factory _CartEmpty({required final String message}) = _$CartEmptyImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CartEmptyImplCopyWith<_$CartEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorImplCopyWith<$Res> {
  factory _$$CartErrorImplCopyWith(
          _$CartErrorImpl value, $Res Function(_$CartErrorImpl) then) =
      __$$CartErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorImpl>
    implements _$$CartErrorImplCopyWith<$Res> {
  __$$CartErrorImplCopyWithImpl(
      _$CartErrorImpl _value, $Res Function(_$CartErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartErrorImpl implements _CartError {
  const _$CartErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.cartError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      __$$CartErrorImplCopyWithImpl<_$CartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemModel> cartItems) cartSuccess,
    required TResult Function(List<CartItemModel> cartItems) itemAdded,
    required TResult Function(String message) cartEmpty,
    required TResult Function(String message) cartError,
  }) {
    return cartError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult? Function(List<CartItemModel> cartItems)? itemAdded,
    TResult? Function(String message)? cartEmpty,
    TResult? Function(String message)? cartError,
  }) {
    return cartError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemModel> cartItems)? cartSuccess,
    TResult Function(List<CartItemModel> cartItems)? itemAdded,
    TResult Function(String message)? cartEmpty,
    TResult Function(String message)? cartError,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartSuccess value) cartSuccess,
    required TResult Function(_CartItemAdded value) itemAdded,
    required TResult Function(_CartEmpty value) cartEmpty,
    required TResult Function(_CartError value) cartError,
  }) {
    return cartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartSuccess value)? cartSuccess,
    TResult? Function(_CartItemAdded value)? itemAdded,
    TResult? Function(_CartEmpty value)? cartEmpty,
    TResult? Function(_CartError value)? cartError,
  }) {
    return cartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartSuccess value)? cartSuccess,
    TResult Function(_CartItemAdded value)? itemAdded,
    TResult Function(_CartEmpty value)? cartEmpty,
    TResult Function(_CartError value)? cartError,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(this);
    }
    return orElse();
  }
}

abstract class _CartError implements CartState {
  const factory _CartError({required final String message}) = _$CartErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CartErrorImplCopyWith<_$CartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
