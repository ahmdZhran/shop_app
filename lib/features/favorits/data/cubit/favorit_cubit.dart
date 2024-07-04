import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/favorite_item_model.dart';
import '../repo/favorite_repo.dart';
import 'favorit_state.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit(this._favoritRepo) : super(const FavoritState.initial());

  final FavoriteRepo _favoritRepo;

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

  
}
