import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class SaveItemOrShareIt extends StatelessWidget {
  const SaveItemOrShareIt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.favorite),
              const SizedBox(width: 5),
              const Text('Favorite'),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
              ),
              const SizedBox(width: 5),
              const Text('Share'),
            ],
          ),
        ],
      ),
    );
  }
}
