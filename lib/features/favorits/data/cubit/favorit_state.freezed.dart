// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritStateCopyWith<$Res> {
  factory $FavoritStateCopyWith(
          FavoritState value, $Res Function(FavoritState) then) =
      _$FavoritStateCopyWithImpl<$Res, FavoritState>;
}

/// @nodoc
class _$FavoritStateCopyWithImpl<$Res, $Val extends FavoritState>
    implements $FavoritStateCopyWith<$Res> {
  _$FavoritStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoritStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FavoritState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
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
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FavoritLoadingImplCopyWith<$Res> {
  factory _$$FavoritLoadingImplCopyWith(_$FavoritLoadingImpl value,
          $Res Function(_$FavoritLoadingImpl) then) =
      __$$FavoritLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritLoadingImplCopyWithImpl<$Res>
    extends _$FavoritStateCopyWithImpl<$Res, _$FavoritLoadingImpl>
    implements _$$FavoritLoadingImplCopyWith<$Res> {
  __$$FavoritLoadingImplCopyWithImpl(
      _$FavoritLoadingImpl _value, $Res Function(_$FavoritLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritLoadingImpl implements FavoritLoading {
  const _$FavoritLoadingImpl();

  @override
  String toString() {
    return 'FavoritState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritLoading implements FavoritState {
  const factory FavoritLoading() = _$FavoritLoadingImpl;
}

/// @nodoc
abstract class _$$FavoriteAddedImplCopyWith<$Res> {
  factory _$$FavoriteAddedImplCopyWith(
          _$FavoriteAddedImpl value, $Res Function(_$FavoriteAddedImpl) then) =
      __$$FavoriteAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FavoriteItemModel> fovoriteItems});
}

/// @nodoc
class __$$FavoriteAddedImplCopyWithImpl<$Res>
    extends _$FavoritStateCopyWithImpl<$Res, _$FavoriteAddedImpl>
    implements _$$FavoriteAddedImplCopyWith<$Res> {
  __$$FavoriteAddedImplCopyWithImpl(
      _$FavoriteAddedImpl _value, $Res Function(_$FavoriteAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fovoriteItems = null,
  }) {
    return _then(_$FavoriteAddedImpl(
      null == fovoriteItems
          ? _value._fovoriteItems
          : fovoriteItems // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItemModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteAddedImpl implements FavoriteAdded {
  const _$FavoriteAddedImpl(final List<FavoriteItemModel> fovoriteItems)
      : _fovoriteItems = fovoriteItems;

  final List<FavoriteItemModel> _fovoriteItems;
  @override
  List<FavoriteItemModel> get fovoriteItems {
    if (_fovoriteItems is EqualUnmodifiableListView) return _fovoriteItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fovoriteItems);
  }

  @override
  String toString() {
    return 'FavoritState.favoriteAdded(fovoriteItems: $fovoriteItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteAddedImpl &&
            const DeepCollectionEquality()
                .equals(other._fovoriteItems, _fovoriteItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fovoriteItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteAddedImplCopyWith<_$FavoriteAddedImpl> get copyWith =>
      __$$FavoriteAddedImplCopyWithImpl<_$FavoriteAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) {
    return favoriteAdded(fovoriteItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) {
    return favoriteAdded?.call(fovoriteItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteAdded != null) {
      return favoriteAdded(fovoriteItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) {
    return favoriteAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) {
    return favoriteAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteAdded != null) {
      return favoriteAdded(this);
    }
    return orElse();
  }
}

abstract class FavoriteAdded implements FavoritState {
  const factory FavoriteAdded(final List<FavoriteItemModel> fovoriteItems) =
      _$FavoriteAddedImpl;

  List<FavoriteItemModel> get fovoriteItems;
  @JsonKey(ignore: true)
  _$$FavoriteAddedImplCopyWith<_$FavoriteAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteErrorImplCopyWith<$Res> {
  factory _$$FavoriteErrorImplCopyWith(
          _$FavoriteErrorImpl value, $Res Function(_$FavoriteErrorImpl) then) =
      __$$FavoriteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FavoriteErrorImplCopyWithImpl<$Res>
    extends _$FavoritStateCopyWithImpl<$Res, _$FavoriteErrorImpl>
    implements _$$FavoriteErrorImplCopyWith<$Res> {
  __$$FavoriteErrorImplCopyWithImpl(
      _$FavoriteErrorImpl _value, $Res Function(_$FavoriteErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FavoriteErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteErrorImpl implements FavoriteError {
  const _$FavoriteErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritState.favoriteError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteErrorImplCopyWith<_$FavoriteErrorImpl> get copyWith =>
      __$$FavoriteErrorImplCopyWithImpl<_$FavoriteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) {
    return favoriteError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) {
    return favoriteError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) {
    return favoriteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) {
    return favoriteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(this);
    }
    return orElse();
  }
}

abstract class FavoriteError implements FavoritState {
  const factory FavoriteError({required final String message}) =
      _$FavoriteErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FavoriteErrorImplCopyWith<_$FavoriteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteEmptyImplCopyWith<$Res> {
  factory _$$FavoriteEmptyImplCopyWith(
          _$FavoriteEmptyImpl value, $Res Function(_$FavoriteEmptyImpl) then) =
      __$$FavoriteEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FavoriteEmptyImplCopyWithImpl<$Res>
    extends _$FavoritStateCopyWithImpl<$Res, _$FavoriteEmptyImpl>
    implements _$$FavoriteEmptyImplCopyWith<$Res> {
  __$$FavoriteEmptyImplCopyWithImpl(
      _$FavoriteEmptyImpl _value, $Res Function(_$FavoriteEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FavoriteEmptyImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteEmptyImpl implements FavoriteEmpty {
  const _$FavoriteEmptyImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritState.favoriteEmpty(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteEmptyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteEmptyImplCopyWith<_$FavoriteEmptyImpl> get copyWith =>
      __$$FavoriteEmptyImplCopyWithImpl<_$FavoriteEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
    required TResult Function(String message) favoriteError,
    required TResult Function(String message) favoriteEmpty,
  }) {
    return favoriteEmpty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult? Function(String message)? favoriteError,
    TResult? Function(String message)? favoriteEmpty,
  }) {
    return favoriteEmpty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    TResult Function(String message)? favoriteError,
    TResult Function(String message)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteEmpty != null) {
      return favoriteEmpty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoritLoading value) loading,
    required TResult Function(FavoriteAdded value) favoriteAdded,
    required TResult Function(FavoriteError value) favoriteError,
    required TResult Function(FavoriteEmpty value) favoriteEmpty,
  }) {
    return favoriteEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoritLoading value)? loading,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
    TResult? Function(FavoriteError value)? favoriteError,
    TResult? Function(FavoriteEmpty value)? favoriteEmpty,
  }) {
    return favoriteEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoritLoading value)? loading,
    TResult Function(FavoriteAdded value)? favoriteAdded,
    TResult Function(FavoriteError value)? favoriteError,
    TResult Function(FavoriteEmpty value)? favoriteEmpty,
    required TResult orElse(),
  }) {
    if (favoriteEmpty != null) {
      return favoriteEmpty(this);
    }
    return orElse();
  }
}

abstract class FavoriteEmpty implements FavoritState {
  const factory FavoriteEmpty({required final String message}) =
      _$FavoriteEmptyImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FavoriteEmptyImplCopyWith<_$FavoriteEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
