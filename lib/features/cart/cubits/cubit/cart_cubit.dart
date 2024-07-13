import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/cart_item_model.dart';
import '../../data/repos/cart_repo.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(const CartState.initial());

  void fetchCartItems() {
    final items = _cartRepo.getCartItems();
    emit(CartState.cartSuccess(items));
  }

  void addItemToCart(CartItemModel item) {
    _cartRepo.addCartItem(item);
    final items = _cartRepo.getCartItems();
    emit(CartState.itemAdded(items));
  }

  void deleteItemFromCart(int id) {
    _cartRepo.deleteItemFromCart(id);
    final items = _cartRepo.getCartItems();
    emit(CartState.itemDeleted(items));
  }

  bool isItemInCart(int id) {
    return _cartRepo.isItemInCart(id);
  }
}
