import 'package:flutter/material.dart';
import 'package:shop_app/core/router/routes.dart';

import '../router/app_router.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: Routes.onboarding,
    );
  }
}
