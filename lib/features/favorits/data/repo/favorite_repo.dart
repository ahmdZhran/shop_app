import 'package:hive/hive.dart';

import '../models/favorite_item_model.dart';

class FavoriteRepo {
  final Box<FavoriteItemModel> _favoritItemsbox =
      Hive.box<FavoriteItemModel>('favorites');

  List<FavoriteItemModel> getFavoriteItems() {
    return _favoritItemsbox.values.toList();
  }

  void addToFavorite(FavoriteItemModel item) {
    _favoritItemsbox.add(item);
  }

  void removeFromFavorite(FavoriteItemModel item) {
    _favoritItemsbox.delete(item.id);
  }

  bool isFavorite(int id) {
    return _favoritItemsbox.values.any((element) => element.id == id);
  }
}
