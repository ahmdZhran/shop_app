// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(ProfileUserData profileUserData)
        profileDataSuccess,
    required TResult Function(String error) profileDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult? Function(String error)? profileDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult Function(String error)? profileDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileDataLoading,
    required TResult Function(ProfileDataSuccess value) profileDataSuccess,
    required TResult Function(ProfileDataFailure value) profileDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult? Function(ProfileDataFailure value)? profileDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileDataLoading,
    TResult Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult Function(ProfileDataFailure value)? profileDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProfileState.initial()';
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
    required TResult Function() profileDataLoading,
    required TResult Function(ProfileUserData profileUserData)
        profileDataSuccess,
    required TResult Function(String error) profileDataFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult? Function(String error)? profileDataFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult Function(String error)? profileDataFailure,
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
    required TResult Function(ProfileLoading value) profileDataLoading,
    required TResult Function(ProfileDataSuccess value) profileDataSuccess,
    required TResult Function(ProfileDataFailure value) profileDataFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult? Function(ProfileDataFailure value)? profileDataFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileDataLoading,
    TResult Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult Function(ProfileDataFailure value)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.profileDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(ProfileUserData profileUserData)
        profileDataSuccess,
    required TResult Function(String error) profileDataFailure,
  }) {
    return profileDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult? Function(String error)? profileDataFailure,
  }) {
    return profileDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult Function(String error)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataLoading != null) {
      return profileDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileDataLoading,
    required TResult Function(ProfileDataSuccess value) profileDataSuccess,
    required TResult Function(ProfileDataFailure value) profileDataFailure,
  }) {
    return profileDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult? Function(ProfileDataFailure value)? profileDataFailure,
  }) {
    return profileDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileDataLoading,
    TResult Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult Function(ProfileDataFailure value)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataLoading != null) {
      return profileDataLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileDataSuccessImplCopyWith<$Res> {
  factory _$$ProfileDataSuccessImplCopyWith(_$ProfileDataSuccessImpl value,
          $Res Function(_$ProfileDataSuccessImpl) then) =
      __$$ProfileDataSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileUserData profileUserData});
}

/// @nodoc
class __$$ProfileDataSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileDataSuccessImpl>
    implements _$$ProfileDataSuccessImplCopyWith<$Res> {
  __$$ProfileDataSuccessImplCopyWithImpl(_$ProfileDataSuccessImpl _value,
      $Res Function(_$ProfileDataSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileUserData = null,
  }) {
    return _then(_$ProfileDataSuccessImpl(
      null == profileUserData
          ? _value.profileUserData
          : profileUserData // ignore: cast_nullable_to_non_nullable
              as ProfileUserData,
    ));
  }
}

/// @nodoc

class _$ProfileDataSuccessImpl implements ProfileDataSuccess {
  const _$ProfileDataSuccessImpl(this.profileUserData);

  @override
  final ProfileUserData profileUserData;

  @override
  String toString() {
    return 'ProfileState.profileDataSuccess(profileUserData: $profileUserData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataSuccessImpl &&
            (identical(other.profileUserData, profileUserData) ||
                other.profileUserData == profileUserData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataSuccessImplCopyWith<_$ProfileDataSuccessImpl> get copyWith =>
      __$$ProfileDataSuccessImplCopyWithImpl<_$ProfileDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(ProfileUserData profileUserData)
        profileDataSuccess,
    required TResult Function(String error) profileDataFailure,
  }) {
    return profileDataSuccess(profileUserData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult? Function(String error)? profileDataFailure,
  }) {
    return profileDataSuccess?.call(profileUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult Function(String error)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataSuccess != null) {
      return profileDataSuccess(profileUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileDataLoading,
    required TResult Function(ProfileDataSuccess value) profileDataSuccess,
    required TResult Function(ProfileDataFailure value) profileDataFailure,
  }) {
    return profileDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult? Function(ProfileDataFailure value)? profileDataFailure,
  }) {
    return profileDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileDataLoading,
    TResult Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult Function(ProfileDataFailure value)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataSuccess != null) {
      return profileDataSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileDataSuccess implements ProfileState {
  const factory ProfileDataSuccess(final ProfileUserData profileUserData) =
      _$ProfileDataSuccessImpl;

  ProfileUserData get profileUserData;
  @JsonKey(ignore: true)
  _$$ProfileDataSuccessImplCopyWith<_$ProfileDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileDataFailureImplCopyWith<$Res> {
  factory _$$ProfileDataFailureImplCopyWith(_$ProfileDataFailureImpl value,
          $Res Function(_$ProfileDataFailureImpl) then) =
      __$$ProfileDataFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProfileDataFailureImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileDataFailureImpl>
    implements _$$ProfileDataFailureImplCopyWith<$Res> {
  __$$ProfileDataFailureImplCopyWithImpl(_$ProfileDataFailureImpl _value,
      $Res Function(_$ProfileDataFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProfileDataFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileDataFailureImpl implements ProfileDataFailure {
  const _$ProfileDataFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.profileDataFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataFailureImplCopyWith<_$ProfileDataFailureImpl> get copyWith =>
      __$$ProfileDataFailureImplCopyWithImpl<_$ProfileDataFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileDataLoading,
    required TResult Function(ProfileUserData profileUserData)
        profileDataSuccess,
    required TResult Function(String error) profileDataFailure,
  }) {
    return profileDataFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileDataLoading,
    TResult? Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult? Function(String error)? profileDataFailure,
  }) {
    return profileDataFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileDataLoading,
    TResult Function(ProfileUserData profileUserData)? profileDataSuccess,
    TResult Function(String error)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataFailure != null) {
      return profileDataFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) profileDataLoading,
    required TResult Function(ProfileDataSuccess value) profileDataSuccess,
    required TResult Function(ProfileDataFailure value) profileDataFailure,
  }) {
    return profileDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileDataLoading,
    TResult? Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult? Function(ProfileDataFailure value)? profileDataFailure,
  }) {
    return profileDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? profileDataLoading,
    TResult Function(ProfileDataSuccess value)? profileDataSuccess,
    TResult Function(ProfileDataFailure value)? profileDataFailure,
    required TResult orElse(),
  }) {
    if (profileDataFailure != null) {
      return profileDataFailure(this);
    }
    return orElse();
  }
}

abstract class ProfileDataFailure implements ProfileState {
  const factory ProfileDataFailure({required final String error}) =
      _$ProfileDataFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ProfileDataFailureImplCopyWith<_$ProfileDataFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
