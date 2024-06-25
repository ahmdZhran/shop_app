import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';

class CategoryCircleAvatar extends StatelessWidget {
  const CategoryCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 30,
            backgroundImage: AssetImage(
              'assets/images/Laptop.png',
            ),
          ),
          5.0.getVerticalSpacer(),
          const Text('data'),
          const Text('data')
        ],
      ),
    );
  }
}
