import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/router/routes.dart';
import 'product_card_header.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.imageurl,
    required this.titleOfItem,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.productId,
    required this.images,
    required this.description,
    required this.nameOfProduct,
  });

  final bool isFavorite = false;
  final String imageurl;
  final String titleOfItem;
  final String price;
  final String oldPrice;
  final String discount;
  final int productId;
  final List<String> images;
  final String description;
  final String nameOfProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160.w,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.productDetails,
              arguments: {
                'id': productId,
                'images': images,
                'price': price,
                'description': description,
                'title': nameOfProduct,
              },
            );
          },
          child: Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductCardHeader(
                      discount: discount,
                      productId: productId,
                      description: description,
                      images: images,
                      imageurl: imageurl,
                      oldPrice: oldPrice,
                      price: price,
                      titleOfItem: titleOfItem,
                    ),
                    SizedBox(
                      height: 100.h,
                      width: double.infinity,
                      child: Hero(
                        tag: productId,
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: imageurl,
                            height: 100.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titleOfItem,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '\$$price',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (oldPrice != price)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          '\$$oldPrice',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
