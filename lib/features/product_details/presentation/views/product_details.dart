import 'package:flutter/material.dart';
import '../widgets/image_slider_indicator.dart';
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
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: ImagesPageViewBuilder(
                controller: controller,
                widget: this,
              ),
            ),
          ),
          ImageSliderIndicator(images: images, controller: controller),
        ],
      ),
    );
  }
}
