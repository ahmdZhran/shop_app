// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shop_app/features/cart/data/repos/cart_repo.dart';
// import 'cart_state.dart';

// class CartCubit extends Cubit<CartState> {
//   CartCubit(this._cartRepo) : super(const CartState.initial());
//   final CartRepo _cartRepo;
//   void fetchCart() async {
//     try {
//       emit(const CartState.cartLoading());
//       final response = await _cartRepo.getCart();
//       response.when(success: (cartResponse) {
//         emit(CartState.cartSuccess(cartResponse));
//       }, failure: (error) {
//         emit(CartState.cartError(error: error.apiErrorModel.message ?? ""));
//       });
//     } catch (error) {
//       emit(CartState.cartError(error: error.toString()));
//     }
//   }
// }
