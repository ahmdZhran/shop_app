import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/animations/animate_do.dart';
import 'package:shop_app/core/utils/color_manager.dart';

class MainBottonNavBar extends StatelessWidget {
  const MainBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: Stack(
          children: [
            const SizedBox(height: 15),
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: ColorManager.kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SizedBox(
                height: 45.h,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
