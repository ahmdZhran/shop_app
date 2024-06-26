import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/helper/shared_prefrence.dart';
import 'core/di/dependency_injection.dart';

import 'core/app/shop_app.dart';
import 'core/helper/shared_prefrence_keys.dart';
import 'core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkLoggedInUser();
  runApp(ShopApp(appRouter: AppRouter()));
}

checkLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
    print('this is the first time login ');
  } else {
    isLoggedInUser = true;
    print(userToken);
    print('no this is noooooooooooooot first time for it ................. ');
  }
}
