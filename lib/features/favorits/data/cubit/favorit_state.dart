import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/favorite_item_model.dart';

part 'favorit_state.freezed.dart';

@freezed
class FavoritState with _$FavoritState {
  const factory FavoritState.initial() = _Initial;

  const factory FavoritState.favoriteAdded(
      List<FavoriteItemModel> fovoriteItems) = FavoriteAdded;
}
