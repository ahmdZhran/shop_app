import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import 'product_details.dart';

class ImagesPageViewBuilder extends StatelessWidget {
  const ImagesPageViewBuilder({
    super.key,
    required PageController controller,
    required this.widget,
  }) : _controller = controller;

  final PageController _controller;
  final ProductDetailsView widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: widget.productId,
            child: Container(
              height: 100,
              width: 270,
              decoration: const BoxDecoration(color: Colors.white),
              child: CachedNetworkImage(
                imageUrl: widget.images[index],
                fit: BoxFit.contain,
                placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                  color: ColorManager.kPrimaryColor,
                )),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
          );
        },
      ),
    );
  }
}
