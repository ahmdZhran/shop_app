import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/home_cubit/home_cubit.dart';
import '../../../cubits/home_cubit/home_state.dart';
import 'banners_list.dart';
import 'shimmer_banner_slider.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).fetchBannerData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
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
