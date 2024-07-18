import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../cubits/cubit/cart_cubit.dart';
import '../../cubits/cubit/cart_state.dart';
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
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              return state.maybeWhen(
                cartSuccess: (items) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Dismissible(
                          background: Container(
                            color: Colors.redAccent,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          key: Key(item.id.toString()),
                          child: CartItemCard(
                            imageUrl: item.image,
                            itemName: item.name,
                            itemPrice: double.parse(item.price),
                            itemCount: 2,
                            onDelete: () {
                              context
                                  .read<CartCubit>()
                                  .deleteItemFromCart(item.id);
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
                orElse: () => const Center(child: Text('no items')),
              );
            },
          ),
          CustomButton(
            onPressed: () {},
            text: Text(
              'Check Out',
              style: CustomTextStyle.medium16,
            ),
          ),
        ],
      ),
    );
  }
}
