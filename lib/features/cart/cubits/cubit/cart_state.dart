import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/cart_item_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _CartInitial;
  const factory CartState.loaded(List<CartItemModel> cartItems) = _CartLoaded;
  const factory CartState.itemAdded(List<CartItemModel> cartItems) = _CartItemAdded;
  const factory CartState.itemDeleted(List<CartItemModel> cartItems) = _CartItemDeleted;
  const factory CartState.cleared() = _CartCleared;
}
