import 'package:flutter/material.dart';
import 'banner_contaner.dart';

class BannersSlider extends StatelessWidget {
  const BannersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const BannerContainer();
      },
    );
  }
}
