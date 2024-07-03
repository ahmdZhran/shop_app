import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/features/onboarding/presentation/widgets/custom_smooth_page_indicator.dart';
import '../widgets/custom_app_bar.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView(
      {super.key, required this.productId, required this.images});
  final int productId;
  final List<String> images;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final PageController _controller = PageController();

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
              controller: _controller,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Hero(
                  tag: widget.productId,
                  child: CachedNetworkImage(
                    imageUrl: widget.images[index],
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
          CustomSmoothPageIndicator(
              countOfDots: widget.images.length,
              controller: _controller,
              widthOfDot: 10,
              heighOfDot: 10,
              widthOfBackGroundDot: 15,
              heightOfBackGroundDot: 15)
        ],
      ),
    );
  }
}
