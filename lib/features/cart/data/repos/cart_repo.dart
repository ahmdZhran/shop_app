import 'package:hive/hive.dart';
import '../models/cart_item_model.dart';

class CartRepo {
  final Box<CartItemModel> cartBox = Hive.box<CartItemModel>('cart_items');

  List<CartItemModel> getCartItems() {
    return cartBox.values.toList();
  }

  void addCartItem(CartItemModel cartItem) {
    cartBox.put(cartItem.id, cartItem);
  }

  void deleteItemFromCart(int id) {
    cartBox.delete(id);
  }

  void clearCart() {
    cartBox.clear();
  }

  bool isItemInCart(int id) {
    return cartBox.values.any((item) => item.id == id);
  }
}
