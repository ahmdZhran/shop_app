import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      // body: BlocBuilder<CartCubit, CartState>(
      //   builder: (context, state) {
      //     return state.when(
      //       initial: () => const Center(child: Text('Cart is empty')),
      //       cartLoading: () => const Center(child: CircularProgressIndicator()),
      //       cartSuccess: (cartResponse) {
      //         return Column(
      //           children: [
      //             Expanded(
      //               child: ListView.builder(
      //                 itemCount: cartResponse.data!.cartItems!.length,
      //                 itemBuilder: (context, index) {
      //                   final cartItem = cartResponse.data!.cartItems![index];
      //                   return CartItemWidget(
      //                     cartItem: cartItem,
      //                     onIncrease: () {
      //                       // Handle increase quantity
      //                     },
      //                     onDecrease: () {
      //                       // Handle decrease quantity
      //                     },
      //                   );
      //                 },
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text('Subtotal: \$${cartResponse.data!.subTotal}'),
      //                   Text('Total: \$${cartResponse.data!.total}',
      //                       style: const TextStyle(
      //                           fontSize: 20, fontWeight: FontWeight.bold)),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         );
      //       },
      //       cartError: (error) => Center(child: Text(error)),
      //     );
      //   },
      // ),
    );
  }
}
