import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../../../onboarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'images_page_view_builder.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({
    super.key,
    required this.productId,
    required this.images,
  });

  final int productId;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: ImagesPageViewBuilder(
                controller: controller,
                widget: this,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: CustomSmoothPageIndicator(
                  countOfDots: images.length,
                  controller: controller,
                  widthOfDot: 10,
                  heighOfDot: 10,
                  widthOfBackGroundDot: 15,
                  heightOfBackGroundDot: 15,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                10.0.getVerticalSpacer(),
                // Add other content here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
