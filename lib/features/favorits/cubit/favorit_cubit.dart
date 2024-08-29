import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/favorite_item_model.dart';
import '../data/repo/favorite_repo.dart';
import 'favorit_state.dart';

class FavoriteCubit extends Cubit<FavoritState> {
  FavoriteCubit(this._favoritRepo) : super(const FavoritState.initial());

  final FavoritRepo _favoritRepo;

  void fetchFavoriteItems() {
    emit(const FavoritState.loading());
    try {
      final favoriteItems = _favoritRepo.getFavoriteItems();
      if (favoriteItems.isEmpty) {
        emit(const FavoritState.favoriteEmpty(message: 'empty'));
      } else {
        emit(FavoritState.favoriteAdded(favoriteItems));
      }
    } catch (error) {
      emit(FavoritState.favoriteError(message: error.toString()));
    }
  }

  void addToFavorit(FavoriteItemModel item) {
    _favoritRepo.addToFavorite(item);
    fetchFavoriteItems();
  }

  void removeFromFavorit(int id) {
    _favoritRepo.removeFromFavorite(id);
    fetchFavoriteItems();
  }

  bool isFavorite(int id) {
    return _favoritRepo.isFavorite(id);
  }
}
