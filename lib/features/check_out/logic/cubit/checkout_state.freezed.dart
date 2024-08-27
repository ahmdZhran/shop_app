// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckoutInitialImplCopyWith<$Res> {
  factory _$$CheckoutInitialImplCopyWith(_$CheckoutInitialImpl value,
          $Res Function(_$CheckoutInitialImpl) then) =
      __$$CheckoutInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutInitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutInitialImpl>
    implements _$$CheckoutInitialImplCopyWith<$Res> {
  __$$CheckoutInitialImplCopyWithImpl(
      _$CheckoutInitialImpl _value, $Res Function(_$CheckoutInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutInitialImpl implements CheckoutInitial {
  const _$CheckoutInitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
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
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CheckoutInitial implements CheckoutState {
  const factory CheckoutInitial() = _$CheckoutInitialImpl;
}

/// @nodoc
abstract class _$$CheckoutLoadingImplCopyWith<$Res> {
  factory _$$CheckoutLoadingImplCopyWith(_$CheckoutLoadingImpl value,
          $Res Function(_$CheckoutLoadingImpl) then) =
      __$$CheckoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutLoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutLoadingImpl>
    implements _$$CheckoutLoadingImplCopyWith<$Res> {
  __$$CheckoutLoadingImplCopyWithImpl(
      _$CheckoutLoadingImpl _value, $Res Function(_$CheckoutLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutLoadingImpl implements CheckoutLoading {
  const _$CheckoutLoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
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
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoading implements CheckoutState {
  const factory CheckoutLoading() = _$CheckoutLoadingImpl;
}

/// @nodoc
abstract class _$$CheckoutSuccessImplCopyWith<$Res> {
  factory _$$CheckoutSuccessImplCopyWith(_$CheckoutSuccessImpl value,
          $Res Function(_$CheckoutSuccessImpl) then) =
      __$$CheckoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutSuccessImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutSuccessImpl>
    implements _$$CheckoutSuccessImplCopyWith<$Res> {
  __$$CheckoutSuccessImplCopyWithImpl(
      _$CheckoutSuccessImpl _value, $Res Function(_$CheckoutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutSuccessImpl implements CheckoutSuccess {
  const _$CheckoutSuccessImpl();

  @override
  String toString() {
    return 'CheckoutState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CheckoutSuccess implements CheckoutState {
  const factory CheckoutSuccess() = _$CheckoutSuccessImpl;
}

/// @nodoc
abstract class _$$CheckoutFailureImplCopyWith<$Res> {
  factory _$$CheckoutFailureImplCopyWith(_$CheckoutFailureImpl value,
          $Res Function(_$CheckoutFailureImpl) then) =
      __$$CheckoutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CheckoutFailureImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutFailureImpl>
    implements _$$CheckoutFailureImplCopyWith<$Res> {
  __$$CheckoutFailureImplCopyWithImpl(
      _$CheckoutFailureImpl _value, $Res Function(_$CheckoutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CheckoutFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutFailureImpl implements CheckoutFailure {
  const _$CheckoutFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CheckoutState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutFailureImplCopyWith<_$CheckoutFailureImpl> get copyWith =>
      __$$CheckoutFailureImplCopyWithImpl<_$CheckoutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CheckoutFailure implements CheckoutState {
  const factory CheckoutFailure(final String errorMessage) =
      _$CheckoutFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CheckoutFailureImplCopyWith<_$CheckoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayPalPaymentPreparedImplCopyWith<$Res> {
  factory _$$PayPalPaymentPreparedImplCopyWith(
          _$PayPalPaymentPreparedImpl value,
          $Res Function(_$PayPalPaymentPreparedImpl) then) =
      __$$PayPalPaymentPreparedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AmountModel amount});
}

/// @nodoc
class __$$PayPalPaymentPreparedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$PayPalPaymentPreparedImpl>
    implements _$$PayPalPaymentPreparedImplCopyWith<$Res> {
  __$$PayPalPaymentPreparedImplCopyWithImpl(_$PayPalPaymentPreparedImpl _value,
      $Res Function(_$PayPalPaymentPreparedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$PayPalPaymentPreparedImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountModel,
    ));
  }
}

/// @nodoc

class _$PayPalPaymentPreparedImpl implements _PayPalPaymentPrepared {
  const _$PayPalPaymentPreparedImpl(this.amount);

  @override
  final AmountModel amount;

  @override
  String toString() {
    return 'CheckoutState.payPalPaymentPrepared(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayPalPaymentPreparedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayPalPaymentPreparedImplCopyWith<_$PayPalPaymentPreparedImpl>
      get copyWith => __$$PayPalPaymentPreparedImplCopyWithImpl<
          _$PayPalPaymentPreparedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(AmountModel amount) payPalPaymentPrepared,
  }) {
    return payPalPaymentPrepared(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(AmountModel amount)? payPalPaymentPrepared,
  }) {
    return payPalPaymentPrepared?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(AmountModel amount)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (payPalPaymentPrepared != null) {
      return payPalPaymentPrepared(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutSuccess value) success,
    required TResult Function(CheckoutFailure value) failure,
    required TResult Function(_PayPalPaymentPrepared value)
        payPalPaymentPrepared,
  }) {
    return payPalPaymentPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutSuccess value)? success,
    TResult? Function(CheckoutFailure value)? failure,
    TResult? Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
  }) {
    return payPalPaymentPrepared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutSuccess value)? success,
    TResult Function(CheckoutFailure value)? failure,
    TResult Function(_PayPalPaymentPrepared value)? payPalPaymentPrepared,
    required TResult orElse(),
  }) {
    if (payPalPaymentPrepared != null) {
      return payPalPaymentPrepared(this);
    }
    return orElse();
  }
}

abstract class _PayPalPaymentPrepared implements CheckoutState {
  const factory _PayPalPaymentPrepared(final AmountModel amount) =
      _$PayPalPaymentPreparedImpl;

  AmountModel get amount;
  @JsonKey(ignore: true)
  _$$PayPalPaymentPreparedImplCopyWith<_$PayPalPaymentPreparedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
