import 'package:flutter_bloc/flutter_bloc.dart';
import '../repo/favorite_repo.dart';
import 'favorit_state.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit(this._favoritRepo) : super(const FavoritState.initial());

  final FavoriteRepo _favoritRepo;

  void fetchFavoriteItems() {
    emit(const FavoritState.loading());
    try {
      final favoriteItems = _favoritRepo.getFavoriteItems();
      if (favoriteItems.isEmpty) {
        emit(const FavoritState.favoriteEmpty(message: 'empty'));
      } else {
        emit(FavoritState.favoriteAdded(favoriteItems));
      }
    } catch (e) {
      emit(FavoritState.favoriteError(message: e.toString()));
    }
  }
}
