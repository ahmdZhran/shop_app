import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../widgets/custom_app_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView(
      {super.key, required this.productId, required this.images});
  final int productId;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const CustomAppBarWidget(),
          SizedBox(
            height: 300.h,
            width: double.infinity,
            child: PageView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Hero(
                  tag: productId,
                  child: CachedNetworkImage(
                    imageUrl: images[index],
                    fit: BoxFit.contain,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Center(child: Icon(Icons.error)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
