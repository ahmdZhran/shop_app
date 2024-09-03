import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/shared_prefrence_keys.dart';
import '../router/app_router.dart';
import '../router/routes.dart';
import '../utils/color_manager.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: ColorManager.kPrimaryColor,
            scaffoldBackgroundColor: ColorManager.kDarkColor,
            colorScheme: ColorScheme.dark(
              primary: ColorManager.kWhiteColor,
            )),
        debugShowCheckedModeBanner: false,
        title: 'Shop app',
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: isLoggedInUser ? Routes.mainScreen : Routes.onboarding,
      ),
    );
  }
}
