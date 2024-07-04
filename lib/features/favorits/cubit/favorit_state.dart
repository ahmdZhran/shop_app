import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/favorite_item_model.dart';

part 'favorit_state.freezed.dart';

@freezed
class FavoritState with _$FavoritState {
  const factory FavoritState.initial() = _Initial;

  const factory FavoritState.loading() = FavoritLoading;

  const factory FavoritState.favoriteAdded(
      List<FavoriteItemModel> fovoriteItems) = FavoriteAdded;
  const factory FavoritState.favoriteError({required String message}) =
      FavoriteError;
  const factory FavoritState.favoriteEmpty({required String message}) =
      FavoriteEmpty;
}
