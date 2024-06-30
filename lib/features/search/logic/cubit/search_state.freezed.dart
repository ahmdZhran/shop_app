// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<dynamic> products) searchSuccess,
    required TResult Function(String error) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<dynamic> products)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<dynamic> products)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SearchState.initial()';
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
    required TResult Function() searchLoading,
    required TResult Function(List<dynamic> products) searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<dynamic> products)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<dynamic> products)? searchSuccess,
    TResult Function(String error)? searchError,
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
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<dynamic> products) searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<dynamic> products)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<dynamic> products)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> products});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SearchSuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl implements SearchSuccess {
  const _$SearchSuccessImpl(final List<dynamic> products)
      : _products = products;

  final List<dynamic> _products;
  @override
  List<dynamic> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SearchState.searchSuccess(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<dynamic> products) searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<dynamic> products)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<dynamic> products)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess(final List<dynamic> products) =
      _$SearchSuccessImpl;

  List<dynamic> get products;
  @JsonKey(ignore: true)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl implements SearchError {
  const _$SearchErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.searchError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<dynamic> products) searchSuccess,
    required TResult Function(String error) searchError,
  }) {
    return searchError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<dynamic> products)? searchSuccess,
    TResult? Function(String error)? searchError,
  }) {
    return searchError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<dynamic> products)? searchSuccess,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchError value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError(final String error) = _$SearchErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
