import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_cubit.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_state.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/models/cart_item_model.dart';
import '../widgets/cart_app_bar_.dart';
import '../widgets/cart_item_card.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CartAppBar(),
          // BlocBuilder<CartCubit, CartState>(builder: (context, state) {
          //   return state.maybeWhen(
          //     cartSuccess: (item) => _buildCartList(context, item),
          //     orElse: () => const SizedBox.shrink(),
          //   );
          // }),
          // Expanded(
          //   child: ListView(children: const [
          //     CartItemCard(
          //       imageUrl:
          //           'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
          //       itemName: 'Apple Watch',
          //       itemPrice: 600.00,
          //       itemCount: 3,
          //     ),
          //   ]),
          // ),
          CustomButton(
              onPressed: () {},
              text: Text(
                'Check Out',
                style: CustomTextStyle.medium16,
              ))
        ],
      ),
    );
  }
}

// Widget _buildCartList(BuildContext context, List<CartItemModel> items) {
//   return SizedBox(
//     height: 20,
//     child: ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         final item = items[index];
//         return CartItemCard(
//           imageUrl: item.image,
//           itemName: item.name,
//           itemPrice: double.parse(item.price),
//           itemCount: 1,
//           onDelete: () {
//             context.read<CartCubit>().deleteItemFromCart(item.id);
//           },
//         );
//       },
//     ),
//   );
// }
