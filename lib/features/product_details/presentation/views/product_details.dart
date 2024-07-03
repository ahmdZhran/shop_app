import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../../../onboarding/presentation/widgets/custom_smooth_page_indicator.dart';
import '../widgets/custom_app_bar.dart';
import 'images_page_view_builder.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView(
      {super.key, required this.productId, required this.images});
  final int productId;
  final List<String> images;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const CustomAppBarWidget(),
          ImagesPageViewBuilder(controller: _controller, widget: widget),
          10.0.getVerticalSpacer(),
          CustomSmoothPageIndicator(
              countOfDots: widget.images.length,
              controller: _controller,
              widthOfDot: 10,
              heighOfDot: 10,
              widthOfBackGroundDot: 15,
              heightOfBackGroundDot: 15),
        ],
      ),
    );
  }
}
