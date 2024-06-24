import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/home/logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';

class BannersSlider extends StatelessWidget {
  const BannersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is BannerLoading ||
          current is BannerSuccess ||
          current is BannerError,
      builder: (context, state) {
        return state.maybeWhen(
          bannerLoading: () {
            return const SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          bannerError: (failure) => const SizedBox.shrink(),
          orElse: () {
            return const SizedBox.shrink();
          },
          bannerSuccess: (bannerResponse) => ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final banner = bannerResponse.bannerData![index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    banner.image!,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
