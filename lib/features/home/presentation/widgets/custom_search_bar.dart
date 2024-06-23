import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/color_manager.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: ColorManager.kDarkGreyColor,
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: AppStrings.searchProduct,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
