import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'banners_list.dart';
import 'shimmer_banner_slider.dart';
import '../../../cubits/banner/banner_cubit.dart';
import '../../../cubits/banner/banner_state.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerCubit, BannerState>(builder: (context, state) {
      return state.maybeWhen(
        bannerLoading: () => const Center(child: CustomShimmerForBanners()),
        bannerSuccess: (bannerResponse) =>
            BannerSliderWidget(banners: bannerResponse.bannerData!),
        bannerError: (error) => Text(error),
        orElse: () => const SizedBox.shrink(),
      );
    });
  }
}