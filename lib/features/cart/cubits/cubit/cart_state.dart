import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/features/cart/data/models/cart_response.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.cartLoading() = CartLoading;

  const factory CartState.cartSuccess(CartResponse cartResponse) = CartSuccess;

  const factory CartState.cartError({required String error}) = CartError;
}
