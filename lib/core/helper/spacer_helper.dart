import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SpacesHelper on double {
  Widget getHorizontalSpacer() => SizedBox(width: w);
  Widget getVerticalSpacer() => SizedBox(height: h);
}
