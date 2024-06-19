import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/router/routes.dart';
import 'package:shop_app/core/utils/color_manager.dart';

import '../router/app_router.dart';

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
        initialRoute: Routes.login,
      ),
    );
  }
}
