import 'package:hive/hive.dart';

import '../models/favorite_item_model.dart';

class FavoritRepo {
  final Box<FavoriteItemModel> _favoritItemsBox =
      Hive.box<FavoriteItemModel>('favorites');

  List<FavoriteItemModel> getFavoriteItems() {
    return _favoritItemsBox.values.toList();
  }

  void addToFavorite(FavoriteItemModel item) {
    _favoritItemsBox.put(item.id, item);
  }

  void removeFromFavorite(int id) {
    _favoritItemsBox.delete(id);
  }

  bool isFavorite(int id) {
    return _favoritItemsBox.containsKey(id);
  }
}
