import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_app/core/helper/extensions.dart';

class ShimmerCategoryCircleAvatar extends StatelessWidget {
  const ShimmerCategoryCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
              ),
              5.0.getVerticalSpacer(),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: 16,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
