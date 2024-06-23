import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/features/home/presentation/widgets/banners/banners_slider.dart';
import 'package:shop_app/features/onboarding/presentation/widgets/custom_smooth_page_indicator.dart';

class BannersList extends StatefulWidget {
  const BannersList({super.key});

  @override
  State<BannersList> createState() => _BannersListState();
}

class _BannersListState extends State<BannersList> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          child: PageView.builder(
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const BannersSlider();
            },
          ),
        ),
        10.0.getVerticalSpacer(),
        CustomSmoothPageIndicator(controller: _controller)
      ],
    );
  }
}
