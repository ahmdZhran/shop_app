import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'banners_list.dart';
import 'shimmer_banner_slider.dart';
import '../../../cubits/banner/banner_cubit.dart';
import '../../../cubits/banner/banner_state.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerCubit, BannerState>(
      builder: (context, state) {
        return state.maybeWhen(
          bannerLoading: () => const Center(child: CustomShimmerForBanners()),
          bannerSuccess: (bannerResponse) =>
              BannerSliderWidget(banners: bannerResponse.bannerData!),
          bannerError: (error) => Container(
            height: 150.h,
            decoration: BoxDecoration(
              color: ColorManager.kBlackColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: ColorManager.kDarkRed,
                    size: 48.sp,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Oops! Something went wrong.",
                    style: CustomTextStyle.semiBold16
                        .copyWith(color: ColorManager.kWhiteColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "$error\nOr swipe to refresh the home screen.",
                    style: CustomTextStyle.medium16
                        .copyWith(color: ColorManager.kWhiteColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
