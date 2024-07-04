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
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FavoriteAdded value) favoriteAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteAdded value)? favoriteAdded,
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
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
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
    required TResult Function(FavoriteAdded value) favoriteAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteAdded value)? favoriteAdded,
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
    required TResult Function(List<FavoriteItemModel> fovoriteItems)
        favoriteAdded,
  }) {
    return favoriteAdded(fovoriteItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
  }) {
    return favoriteAdded?.call(fovoriteItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FavoriteItemModel> fovoriteItems)? favoriteAdded,
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
    required TResult Function(FavoriteAdded value) favoriteAdded,
  }) {
    return favoriteAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FavoriteAdded value)? favoriteAdded,
  }) {
    return favoriteAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FavoriteAdded value)? favoriteAdded,
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
