import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_toast.dart';
import '../../../cart/cubits/cubit/cart_cubit.dart';
import '../../../cart/data/models/cart_item_model.dart';

class AnimatedCartButton extends StatefulWidget {
  final CartItemModel cartItem;

  const AnimatedCartButton({super.key, required this.cartItem});

  @override
  AnimatedCartButtonState createState() => AnimatedCartButtonState();
}

class AnimatedCartButtonState extends State<AnimatedCartButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onAddToCart() {
    final cartCubit = context.read<CartCubit>();
    final isInCart = cartCubit.isItemInCart(widget.cartItem.id);
    if (isInCart) {
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(
      //     content: Text('This item has already been added to the cart.'),
      //     duration: Duration(seconds: 2),
      //   ),
      // );
      ShowToast.showToastErrorBottom(
        message: 'This item has already been added to the cart.',
      );
    } else {
      cartCubit.addItemToCart(widget.cartItem);
      _controller.forward().then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Item added to cart!'),
            duration: Duration(seconds: 2),
          ),
        );
        _controller.reset();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomButton(
          onPressed: _onAddToCart,
          text: const Text(
            'Add To Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        SlideTransition(
          position: _offsetAnimation,
          child: const Padding(
            padding: EdgeInsets.only(left: 90, top: 15),
            child:
                Center(child: Icon(Icons.shopping_cart, color: Colors.black)),
          ),
        ),
      ],
    );
  }
}
