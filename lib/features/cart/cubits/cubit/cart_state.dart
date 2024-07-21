import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/cart_item_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _CartInitial;
  const factory CartState.loading() = _CartLoading;
  const factory CartState.cartSuccess(List<CartItemModel> cartItems , double totalPrice) = _CartSuccess;
  const factory CartState.itemAdded(List<CartItemModel> cartItems , double totalPrice) = _CartItemAdded;
  const factory CartState.cartEmpty({required String message}) = _CartEmpty;
  const factory CartState.cartError({required String message}) = _CartError;
  
}
