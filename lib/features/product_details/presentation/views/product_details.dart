import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppBarWidget(),
        Hero(
            tag: productId,
            child: Image.network(
                'https://recordofragnarok.shop/wp-content/uploads/2022/03/Anime-Attack-on-Titan-Pullovers-Tops-Long-Sleeves-Hoodie-Male-Cloth-1.jpg')),
      ],
    ));
  }
}
