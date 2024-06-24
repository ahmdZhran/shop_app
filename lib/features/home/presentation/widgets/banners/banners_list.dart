import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/features/home/logic/cubit/home_cubit.dart';
import '../../../../../core/helper/extensions.dart';
import '../../../logic/cubit/home_state.dart';
import 'banners_slider.dart';

class BannersList extends StatelessWidget {
  const BannersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          bannerLoading: () => const Center(child: CircularProgressIndicator()),
          bannerSuccess: (bannerResponse) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: bannerResponse.bannerData!.length,
                    itemBuilder: (context, index, realIndex) {
                      return BannersSlider(
                        imageUrl:
                            bannerResponse.bannerData![index].image.toString(),
                      );
                    },
                    options: CarouselOptions(
                      height: 130.h,
                      reverse: true,
                      viewportFraction: 1,
                      autoPlay: true,
                    ),
                  ),
                ),
                10.0.getVerticalSpacer(),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
