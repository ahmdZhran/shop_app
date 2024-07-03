import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/text_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              AppAssets.arroBack,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          const Spacer(),
          Text(
            'Name of Item',
            style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 20),
          ),
          const Spacer(),
          SvgPicture.asset(
            AppAssets.favorite,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_sharp,
            ),
          ),
        ],
      ),
    );
  }
}
