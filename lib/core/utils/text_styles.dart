import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_manager.dart';

abstract class CustomTextStyle {
  static final soraBoldstyleBold = TextStyle(
    fontFamily: "Sora",
    fontSize: 24.sp,
    color: ColorManager.kWhiteColor,
    fontWeight: FontWeight.bold,
  );
  static final regular14 = TextStyle(
    fontSize: 14.sp,
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
  static final medium18 = TextStyle(
      fontWeight: FontWeight.w300,
      color: ColorManager.kWhiteColor,
      fontFamily: "Inter",
      fontSize: 18.sp);
  static final medium16 = TextStyle(
      fontWeight: FontWeight.w900,
      color: Colors.black,
      fontFamily: "Inter",
      fontSize: 16.sp);
  static final medium25 = TextStyle(
      fontWeight: FontWeight.w300,
      color: ColorManager.kWhiteColor,
      fontFamily: "Inter",
      fontSize: 25);
  static final medium15 = TextStyle(
      fontWeight: FontWeight.w300,
      color: ColorManager.kWhiteColor,
      fontFamily: "Inter",
      fontSize: 15);
}
