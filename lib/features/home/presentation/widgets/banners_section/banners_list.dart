import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/banners_models/banner_response.dart';
import 'banners_slider.dart';

class BannerSliderWidget extends StatelessWidget {
  final List<BannerData> banners;
  const BannerSliderWidget({required this.banners, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: banners.length,
        itemBuilder: (context, index, realIndex) {
          return BannersSlider(imageUrl: banners[index].image.toString());
        },
        options: CarouselOptions(
          height: 130.h,
          reverse: true,
          viewportFraction: 1,
          autoPlay: true,
        ),
      ),
    );
  }
}