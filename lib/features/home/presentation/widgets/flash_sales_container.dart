import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import 'titiles_of_flash_card.dart';

class FlashSalesContainer extends StatelessWidget {
  const FlashSalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorManager.kPrimaryColor,
        ),
        child: const TextsOfFlashSalesWidget(),
      ),
    );
  }
}
