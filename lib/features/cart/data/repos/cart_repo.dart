import 'package:hive/hive.dart';
import '../models/cart_item_model.dart';

class CartRepo {
  final Box<CartItemModel> cartBox = Hive.box<CartItemModel>('cart_items');

  List<CartItemModel> getCartItems() {
    return cartBox.values.toList();
  }

  Future<void> addCartItem(CartItemModel cartItem) async {
    await cartBox.put(cartItem.id, cartItem);
  }

  Future<void> deleteItemFromCart(int id) async {
    await cartBox.delete(id);
  }

  Future<void> clearCart() async {
    await cartBox.clear();
  }

  Future<void> updateCartItem(CartItemModel cartItem) async {
    await cartBox.put(cartItem.id, cartItem);
  }

  bool isItemInCart(int id) {
    return cartBox.values.any((item) => item.id == id);
  }
}
