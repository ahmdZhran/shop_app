// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(HomeProductsResponse productResponse)
        productsSuccess,
    required TResult Function(String error) productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult? Function(String error)? productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult Function(String error)? productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoading value) productsLoading,
    required TResult Function(ProductsSuccess value) productsSuccess,
    required TResult Function(ProductsError value) productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsLoading value)? productsLoading,
    TResult? Function(ProductsSuccess value)? productsSuccess,
    TResult? Function(ProductsError value)? productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoading value)? productsLoading,
    TResult Function(ProductsSuccess value)? productsSuccess,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductsState.initial()';
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
    required TResult Function() productsLoading,
    required TResult Function(HomeProductsResponse productResponse)
        productsSuccess,
    required TResult Function(String error) productsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult? Function(String error)? productsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult Function(String error)? productsError,
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
    required TResult Function(ProductsLoading value) productsLoading,
    required TResult Function(ProductsSuccess value) productsSuccess,
    required TResult Function(ProductsError value) productsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsLoading value)? productsLoading,
    TResult? Function(ProductsSuccess value)? productsSuccess,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoading value)? productsLoading,
    TResult Function(ProductsSuccess value)? productsSuccess,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProductsLoadingImplCopyWith<$Res> {
  factory _$$ProductsLoadingImplCopyWith(_$ProductsLoadingImpl value,
          $Res Function(_$ProductsLoadingImpl) then) =
      __$$ProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsLoadingImpl>
    implements _$$ProductsLoadingImplCopyWith<$Res> {
  __$$ProductsLoadingImplCopyWithImpl(
      _$ProductsLoadingImpl _value, $Res Function(_$ProductsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsLoadingImpl implements ProductsLoading {
  const _$ProductsLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.productsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(HomeProductsResponse productResponse)
        productsSuccess,
    required TResult Function(String error) productsError,
  }) {
    return productsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult? Function(String error)? productsError,
  }) {
    return productsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult Function(String error)? productsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoading value) productsLoading,
    required TResult Function(ProductsSuccess value) productsSuccess,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsLoading value)? productsLoading,
    TResult? Function(ProductsSuccess value)? productsSuccess,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoading value)? productsLoading,
    TResult Function(ProductsSuccess value)? productsSuccess,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading implements ProductsState {
  const factory ProductsLoading() = _$ProductsLoadingImpl;
}

/// @nodoc
abstract class _$$ProductsSuccessImplCopyWith<$Res> {
  factory _$$ProductsSuccessImplCopyWith(_$ProductsSuccessImpl value,
          $Res Function(_$ProductsSuccessImpl) then) =
      __$$ProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeProductsResponse productResponse});
}

/// @nodoc
class __$$ProductsSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsSuccessImpl>
    implements _$$ProductsSuccessImplCopyWith<$Res> {
  __$$ProductsSuccessImplCopyWithImpl(
      _$ProductsSuccessImpl _value, $Res Function(_$ProductsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productResponse = null,
  }) {
    return _then(_$ProductsSuccessImpl(
      null == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as HomeProductsResponse,
    ));
  }
}

/// @nodoc

class _$ProductsSuccessImpl implements ProductsSuccess {
  const _$ProductsSuccessImpl(this.productResponse);

  @override
  final HomeProductsResponse productResponse;

  @override
  String toString() {
    return 'ProductsState.productsSuccess(productResponse: $productResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSuccessImpl &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      __$$ProductsSuccessImplCopyWithImpl<_$ProductsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(HomeProductsResponse productResponse)
        productsSuccess,
    required TResult Function(String error) productsError,
  }) {
    return productsSuccess(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult? Function(String error)? productsError,
  }) {
    return productsSuccess?.call(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult Function(String error)? productsError,
    required TResult orElse(),
  }) {
    if (productsSuccess != null) {
      return productsSuccess(productResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoading value) productsLoading,
    required TResult Function(ProductsSuccess value) productsSuccess,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsLoading value)? productsLoading,
    TResult? Function(ProductsSuccess value)? productsSuccess,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoading value)? productsLoading,
    TResult Function(ProductsSuccess value)? productsSuccess,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productsSuccess != null) {
      return productsSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsSuccess implements ProductsState {
  const factory ProductsSuccess(final HomeProductsResponse productResponse) =
      _$ProductsSuccessImpl;

  HomeProductsResponse get productResponse;
  @JsonKey(ignore: true)
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorImplCopyWith<$Res> {
  factory _$$ProductsErrorImplCopyWith(
          _$ProductsErrorImpl value, $Res Function(_$ProductsErrorImpl) then) =
      __$$ProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProductsErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsErrorImpl>
    implements _$$ProductsErrorImplCopyWith<$Res> {
  __$$ProductsErrorImplCopyWithImpl(
      _$ProductsErrorImpl _value, $Res Function(_$ProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsErrorImpl implements ProductsError {
  const _$ProductsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState.productsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      __$$ProductsErrorImplCopyWithImpl<_$ProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(HomeProductsResponse productResponse)
        productsSuccess,
    required TResult Function(String error) productsError,
  }) {
    return productsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult? Function(String error)? productsError,
  }) {
    return productsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(HomeProductsResponse productResponse)? productsSuccess,
    TResult Function(String error)? productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsLoading value) productsLoading,
    required TResult Function(ProductsSuccess value) productsSuccess,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsLoading value)? productsLoading,
    TResult? Function(ProductsSuccess value)? productsSuccess,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsLoading value)? productsLoading,
    TResult Function(ProductsSuccess value)? productsSuccess,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(this);
    }
    return orElse();
  }
}

abstract class ProductsError implements ProductsState {
  const factory ProductsError({required final String error}) =
      _$ProductsErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
