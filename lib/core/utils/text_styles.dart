import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/color_manager.dart';

abstract class CustomTextStyle {
  static final soraBoldstyleBold = TextStyle(
    fontFamily: "Sora",
    fontSize: 24,
    color: ColorManager.kWhiteColor,
    fontWeight: FontWeight.bold,
  );
  static final regular14 = TextStyle(
    fontSize: 14,
    color: ColorManager.kGreyColor,
    fontFamily: "Inter",
  );
  static final semiBold16 = TextStyle(
    fontWeight: FontWeight.w700,
    color: ColorManager.kBlackColor,
    fontFamily: "Inter",
  );
  static final medium14 = TextStyle(
    fontWeight: FontWeight.w300,
    color: ColorManager.kWhiteColor,
    fontFamily: "Inter",
  );
}
