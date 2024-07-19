import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/cart_item_model.dart';
import '../../data/repos/cart_repo.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(const CartState.initial());

  void fetchCartItems() {
    emit(const CartState.loading());
    try {
      final items = _cartRepo.getCartItems();
      if (items.isEmpty) {
        emit(const CartState.cartEmpty(message: 'Cart is empty.'));
      } else {
        emit(CartState.cartSuccess(items));
      }
    } catch (error) {
      emit(CartState.cartError(message: error.toString()));
    }
  }

  void addItemToCart(CartItemModel item) {
    emit(const CartState.loading());
    try {
      _cartRepo.addCartItem(item);
      final items = _cartRepo.getCartItems();
      emit(CartState.itemAdded(items));
    } catch (error) {
      emit(CartState.cartError(message: error.toString()));
    }
  }

  void clearCartItems() {
    emit(const CartState.loading());
    try {
      _cartRepo.clearCart();
      emit(const CartState.cartEmpty(message: 'Cart is empty.'));
    } catch (error) {
      emit(CartState.cartError(message: error.toString()));
    }
  }

  void deleteItemFromCart(int id) {
    emit(const CartState.loading());
    try {
      _cartRepo.deleteItemFromCart(id);
      fetchCartItems();
    } catch (error) {
      emit(CartState.cartError(message: error.toString()));
    }
  }

  bool isItemInCart(int id) {
    return _cartRepo.isItemInCart(id);
  }
}
