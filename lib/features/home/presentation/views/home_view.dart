import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../logic/cubits/banner/banner_cubit.dart';
import '../../data/models/banners_models/banner_response.dart';
import '../../logic/cubits/banner/banner_state.dart';
import '../../../../core/helper/extensions.dart';
import '../widgets/banners/banners_slider.dart';
import '../widgets/banners/shimmer_banner_slider.dart';
import '../widgets/cart_head_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const CartHeadIcon(),
              15.0.getVerticalSpacer(),
              BlocBuilder<BannerCubit, BannerState>(builder: (context, state) {
                return state.maybeWhen(
                  bannerLoading: () => const Center(
                    child: CustomShimmerForBanners(),
                  ),
                  bannerSuccess: (bannerResponse) =>
                      buildBanner(bannerResponse.bannerData!),
                  bannerError: (error) => Text(error),
                  orElse: () => const SizedBox.shrink(),
                );
              })
              // BlocProvider(
              //   create: (context) => BannerCubit(getIt())..fetchBannerDate(),
              //   child: const BannersList(),
              // ),
              // 10.0.getVerticalSpacer(),
              // BlocProvider(
              //   create: (context) => HomeCubit(getIt())..fetchCategories(),
              //   child: const ListOfCategory(),
              // ),
              // ProductsSection(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => BlocProvider.value(
              //                   value: context.read<HomeCubit>()
              //                     ..fetchHomeProducts(),
              //                   child: const AllProducts(),
              //                 )));
              //   },
              // ),
              // BlocProvider(
              //   create: (context) => HomeCubit(getIt())..fetchHomeProducts(),
              //   child: const CustomStaggeredGridView(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBanner(List<BannerData> banners) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: banners.length,
        itemBuilder: (context, index, realIndex) {
          return BannersSlider(
            imageUrl: banners[index].image.toString(),
          );
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
