import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/favorits/data/models/favorite_item_model.dart';

import '../repo/favorite_repo.dart';
import 'favorit_state.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit(this._favoritRepo) : super(const FavoritState.initial());

  final FavoriteRepo _favoritRepo;

  void addToFavorite(FavoriteItemModel item) {
    _favoritRepo.addToFavorite(item);
    emit(FavoritState.favoriteAdded(_favoritRepo.getFavoriteItems()));
  }
}
