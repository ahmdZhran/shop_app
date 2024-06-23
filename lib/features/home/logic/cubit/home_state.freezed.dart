// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(BannerResponse bannerResponse) bannerSuccess,
    required TResult Function(String error) bannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult? Function(String error)? bannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult Function(String error)? bannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerSuccess value) bannerSuccess,
    required TResult Function(BannerError value) bannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerSuccess value)? bannerSuccess,
    TResult? Function(BannerError value)? bannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerSuccess value)? bannerSuccess,
    TResult Function(BannerError value)? bannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeState.initial()';
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
    required TResult Function() bannerLoading,
    required TResult Function(BannerResponse bannerResponse) bannerSuccess,
    required TResult Function(String error) bannerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult? Function(String error)? bannerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult Function(String error)? bannerError,
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
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerSuccess value) bannerSuccess,
    required TResult Function(BannerError value) bannerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerSuccess value)? bannerSuccess,
    TResult? Function(BannerError value)? bannerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerSuccess value)? bannerSuccess,
    TResult Function(BannerError value)? bannerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BannerLoadingImplCopyWith<$Res> {
  factory _$$BannerLoadingImplCopyWith(
          _$BannerLoadingImpl value, $Res Function(_$BannerLoadingImpl) then) =
      __$$BannerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannerLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannerLoadingImpl>
    implements _$$BannerLoadingImplCopyWith<$Res> {
  __$$BannerLoadingImplCopyWithImpl(
      _$BannerLoadingImpl _value, $Res Function(_$BannerLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BannerLoadingImpl implements BannerLoading {
  const _$BannerLoadingImpl();

  @override
  String toString() {
    return 'HomeState.bannerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(BannerResponse bannerResponse) bannerSuccess,
    required TResult Function(String error) bannerError,
  }) {
    return bannerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult? Function(String error)? bannerError,
  }) {
    return bannerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult Function(String error)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerLoading != null) {
      return bannerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerSuccess value) bannerSuccess,
    required TResult Function(BannerError value) bannerError,
  }) {
    return bannerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerSuccess value)? bannerSuccess,
    TResult? Function(BannerError value)? bannerError,
  }) {
    return bannerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerSuccess value)? bannerSuccess,
    TResult Function(BannerError value)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerLoading != null) {
      return bannerLoading(this);
    }
    return orElse();
  }
}

abstract class BannerLoading implements HomeState {
  const factory BannerLoading() = _$BannerLoadingImpl;
}

/// @nodoc
abstract class _$$BannerSuccessImplCopyWith<$Res> {
  factory _$$BannerSuccessImplCopyWith(
          _$BannerSuccessImpl value, $Res Function(_$BannerSuccessImpl) then) =
      __$$BannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerResponse bannerResponse});
}

/// @nodoc
class __$$BannerSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannerSuccessImpl>
    implements _$$BannerSuccessImplCopyWith<$Res> {
  __$$BannerSuccessImplCopyWithImpl(
      _$BannerSuccessImpl _value, $Res Function(_$BannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerResponse = freezed,
  }) {
    return _then(_$BannerSuccessImpl(
      freezed == bannerResponse
          ? _value.bannerResponse
          : bannerResponse // ignore: cast_nullable_to_non_nullable
              as BannerResponse,
    ));
  }
}

/// @nodoc

class _$BannerSuccessImpl implements BannerSuccess {
  const _$BannerSuccessImpl(this.bannerResponse);

  @override
  final BannerResponse bannerResponse;

  @override
  String toString() {
    return 'HomeState.bannerSuccess(bannerResponse: $bannerResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other.bannerResponse, bannerResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bannerResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerSuccessImplCopyWith<_$BannerSuccessImpl> get copyWith =>
      __$$BannerSuccessImplCopyWithImpl<_$BannerSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(BannerResponse bannerResponse) bannerSuccess,
    required TResult Function(String error) bannerError,
  }) {
    return bannerSuccess(bannerResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult? Function(String error)? bannerError,
  }) {
    return bannerSuccess?.call(bannerResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult Function(String error)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerSuccess != null) {
      return bannerSuccess(bannerResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerSuccess value) bannerSuccess,
    required TResult Function(BannerError value) bannerError,
  }) {
    return bannerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerSuccess value)? bannerSuccess,
    TResult? Function(BannerError value)? bannerError,
  }) {
    return bannerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerSuccess value)? bannerSuccess,
    TResult Function(BannerError value)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerSuccess != null) {
      return bannerSuccess(this);
    }
    return orElse();
  }
}

abstract class BannerSuccess implements HomeState {
  const factory BannerSuccess(final BannerResponse bannerResponse) =
      _$BannerSuccessImpl;

  BannerResponse get bannerResponse;
  @JsonKey(ignore: true)
  _$$BannerSuccessImplCopyWith<_$BannerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BannerErrorImplCopyWith<$Res> {
  factory _$$BannerErrorImplCopyWith(
          _$BannerErrorImpl value, $Res Function(_$BannerErrorImpl) then) =
      __$$BannerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BannerErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannerErrorImpl>
    implements _$$BannerErrorImplCopyWith<$Res> {
  __$$BannerErrorImplCopyWithImpl(
      _$BannerErrorImpl _value, $Res Function(_$BannerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BannerErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BannerErrorImpl implements BannerError {
  const _$BannerErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.bannerError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerErrorImplCopyWith<_$BannerErrorImpl> get copyWith =>
      __$$BannerErrorImplCopyWithImpl<_$BannerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(BannerResponse bannerResponse) bannerSuccess,
    required TResult Function(String error) bannerError,
  }) {
    return bannerError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult? Function(String error)? bannerError,
  }) {
    return bannerError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(BannerResponse bannerResponse)? bannerSuccess,
    TResult Function(String error)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerError != null) {
      return bannerError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerSuccess value) bannerSuccess,
    required TResult Function(BannerError value) bannerError,
  }) {
    return bannerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerSuccess value)? bannerSuccess,
    TResult? Function(BannerError value)? bannerError,
  }) {
    return bannerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerSuccess value)? bannerSuccess,
    TResult Function(BannerError value)? bannerError,
    required TResult orElse(),
  }) {
    if (bannerError != null) {
      return bannerError(this);
    }
    return orElse();
  }
}

abstract class BannerError implements HomeState {
  const factory BannerError({required final String error}) = _$BannerErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$BannerErrorImplCopyWith<_$BannerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
