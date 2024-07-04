import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/favorite_item_model.dart';
import '../data/repo/favorite_repo.dart';
import 'favorit_state.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit(this._favoritRepo) : super(const FavoritState.initial());

  final FavoritRepo _favoritRepo;

  void fetchFavoritItems() {
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
    try {
      _favoritRepo.addToFavorite(item);
      fetchFavoritItems();
    } catch (error) {
      emit(FavoritState.favoriteError(message: error.toString()));
    }
  }

  void removeFromFavorit(int id) {
    try {
      _favoritRepo.removeFromFavorite(id);
      fetchFavoritItems();
    } catch (error) {
      emit(FavoritState.favoriteError(message: error.toString()));
    }
  }

  bool isFavorite(int id) {
    return _favoritRepo.isFavorite(id);
  }
}
