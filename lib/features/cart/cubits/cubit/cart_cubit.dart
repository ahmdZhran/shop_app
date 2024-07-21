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
      final totalPrice = _calculateTotalPrice(items);
      if (items.isEmpty) {
        emit(const CartState.cartEmpty(message: 'Cart is empty.'));
      } else {
        emit(CartState.cartSuccess(items, totalPrice));
      }
    } catch (error) {
      emit(CartState.cartError(message: error.toString()));
    }
  }

  void addItemToCart(CartItemModel item) {
    _cartRepo.addCartItem(item);
    final items = _cartRepo.getCartItems();
    final totalPrice = _calculateTotalPrice(items);
    emit(CartState.itemAdded(items, totalPrice));
  }

  void clearCartItems() {
    _cartRepo.clearCart();
    emit(const CartState.cartEmpty(message: 'Cart is empty.'));
  }

  void deleteItemFromCart(int id) {
    _cartRepo.deleteItemFromCart(id);
    fetchCartItems();
  }

  bool isItemInCart(int id) {
    return _cartRepo.isItemInCart(id);
  }

  void incrementItemCount(int id) {
    final item = _cartRepo.cartBox.get(id);
    if (item != null) {
      item.quantity++;
      _cartRepo.updateCartItem(item);
      fetchCartItems();
    }
  }

  void decrementItemCount(int id) {
    final item = _cartRepo.cartBox.get(id);
    if (item != null) {
      if (item.quantity > 1) {
        item.quantity--;
        _cartRepo.updateCartItem(item);
        fetchCartItems();
      }
    }
  }

  double _calculateTotalPrice(List<CartItemModel> items) {
    return items.fold(
      0,
      (total, item) => total + (double.parse(item.price) * item.quantity),
    );
  }
}
