import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'card_item.dart';

class CustomStaggeredGridView extends StatelessWidget {
  const CustomStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return const ItemCard();
        },
      ),
    );
  }
}
