import 'package:hive/hive.dart';
import '../models/cart_item_model.dart';

class CartRepo {
  final Box<CartItemModel> cartBox;
  CartRepo({required this.cartBox});

  List<CartItemModel> getCartItems() {
    return cartBox.values.toList();
  }

  void addCartItem(CartItemModel cartItem) {
    cartBox.add(cartItem);
  }

  void deleteItemFromCart(int id) {
    cartBox.delete(id);
  }

  void clearCart() {
    cartBox.clear();
  }
}
