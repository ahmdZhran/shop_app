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
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
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
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
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
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CheckoutState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PaymentLoadingImplCopyWith<$Res> {
  factory _$$PaymentLoadingImplCopyWith(_$PaymentLoadingImpl value,
          $Res Function(_$PaymentLoadingImpl) then) =
      __$$PaymentLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentLoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$PaymentLoadingImpl>
    implements _$$PaymentLoadingImplCopyWith<$Res> {
  __$$PaymentLoadingImplCopyWithImpl(
      _$PaymentLoadingImpl _value, $Res Function(_$PaymentLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentLoadingImpl implements PaymentLoading {
  const _$PaymentLoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.paymentLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) {
    return paymentLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) {
    return paymentLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentLoading != null) {
      return paymentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) {
    return paymentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) {
    return paymentLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentLoading != null) {
      return paymentLoading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements CheckoutState {
  const factory PaymentLoading() = _$PaymentLoadingImpl;
}

/// @nodoc
abstract class _$$PaymentIntentCreatedImplCopyWith<$Res> {
  factory _$$PaymentIntentCreatedImplCopyWith(_$PaymentIntentCreatedImpl value,
          $Res Function(_$PaymentIntentCreatedImpl) then) =
      __$$PaymentIntentCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentIntentModel paymentIntentModel});
}

/// @nodoc
class __$$PaymentIntentCreatedImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$PaymentIntentCreatedImpl>
    implements _$$PaymentIntentCreatedImplCopyWith<$Res> {
  __$$PaymentIntentCreatedImplCopyWithImpl(_$PaymentIntentCreatedImpl _value,
      $Res Function(_$PaymentIntentCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntentModel = freezed,
  }) {
    return _then(_$PaymentIntentCreatedImpl(
      freezed == paymentIntentModel
          ? _value.paymentIntentModel
          : paymentIntentModel // ignore: cast_nullable_to_non_nullable
              as PaymentIntentModel,
    ));
  }
}

/// @nodoc

class _$PaymentIntentCreatedImpl implements PaymentIntentCreated {
  const _$PaymentIntentCreatedImpl(this.paymentIntentModel);

  @override
  final PaymentIntentModel paymentIntentModel;

  @override
  String toString() {
    return 'CheckoutState.paymentIntentCreated(paymentIntentModel: $paymentIntentModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentIntentCreatedImpl &&
            const DeepCollectionEquality()
                .equals(other.paymentIntentModel, paymentIntentModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(paymentIntentModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentIntentCreatedImplCopyWith<_$PaymentIntentCreatedImpl>
      get copyWith =>
          __$$PaymentIntentCreatedImplCopyWithImpl<_$PaymentIntentCreatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) {
    return paymentIntentCreated(paymentIntentModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) {
    return paymentIntentCreated?.call(paymentIntentModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentIntentCreated != null) {
      return paymentIntentCreated(paymentIntentModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) {
    return paymentIntentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) {
    return paymentIntentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentIntentCreated != null) {
      return paymentIntentCreated(this);
    }
    return orElse();
  }
}

abstract class PaymentIntentCreated implements CheckoutState {
  const factory PaymentIntentCreated(
      final PaymentIntentModel paymentIntentModel) = _$PaymentIntentCreatedImpl;

  PaymentIntentModel get paymentIntentModel;
  @JsonKey(ignore: true)
  _$$PaymentIntentCreatedImplCopyWith<_$PaymentIntentCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(_$PaymentSuccessImpl value,
          $Res Function(_$PaymentSuccessImpl) then) =
      __$$PaymentSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
      _$PaymentSuccessImpl _value, $Res Function(_$PaymentSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentSuccessImpl implements PaymentSuccess {
  const _$PaymentSuccessImpl();

  @override
  String toString() {
    return 'CheckoutState.paymentSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) {
    return paymentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) {
    return paymentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccess implements CheckoutState {
  const factory PaymentSuccess() = _$PaymentSuccessImpl;
}

/// @nodoc
abstract class _$$PaymentErrorImplCopyWith<$Res> {
  factory _$$PaymentErrorImplCopyWith(
          _$PaymentErrorImpl value, $Res Function(_$PaymentErrorImpl) then) =
      __$$PaymentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaymentErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$PaymentErrorImpl>
    implements _$$PaymentErrorImplCopyWith<$Res> {
  __$$PaymentErrorImplCopyWithImpl(
      _$PaymentErrorImpl _value, $Res Function(_$PaymentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PaymentErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentErrorImpl implements PaymentError {
  const _$PaymentErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.paymentError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentErrorImplCopyWith<_$PaymentErrorImpl> get copyWith =>
      __$$PaymentErrorImplCopyWithImpl<_$PaymentErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(PaymentIntentModel paymentIntentModel)
        paymentIntentCreated,
    required TResult Function() paymentSuccess,
    required TResult Function(String message) paymentError,
  }) {
    return paymentError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult? Function()? paymentSuccess,
    TResult? Function(String message)? paymentError,
  }) {
    return paymentError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(PaymentIntentModel paymentIntentModel)?
        paymentIntentCreated,
    TResult Function()? paymentSuccess,
    TResult Function(String message)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentIntentCreated value) paymentIntentCreated,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentError value) paymentError,
  }) {
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentError value)? paymentError,
  }) {
    return paymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentIntentCreated value)? paymentIntentCreated,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements CheckoutState {
  const factory PaymentError(final String message) = _$PaymentErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PaymentErrorImplCopyWith<_$PaymentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
