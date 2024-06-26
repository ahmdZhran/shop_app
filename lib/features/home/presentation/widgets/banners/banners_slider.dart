import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shop_app/features/home/presentation/widgets/banners/shimmer_banner_slider.dart';

class BannersSlider extends StatelessWidget {
  const BannersSlider({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const CustomShimmerForBanners(
              childOfShimmer: Text('Error loading image'),
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
