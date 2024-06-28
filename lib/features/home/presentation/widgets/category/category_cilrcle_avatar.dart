import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';

class CategoryCircleAvatar extends StatelessWidget {
  const CategoryCircleAvatar({
    super.key,
    required this.imageUrl,
 
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30,
              backgroundImage: NetworkImage(imageUrl)),
          5.0.getVerticalSpacer(),
          SizedBox(
            width: 70.w,
          
          ),
        ],
      ),
    );
  }
}
