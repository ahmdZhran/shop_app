import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/helper/shared_prefrence.dart';
import 'core/di/dependency_injection.dart';

import 'core/app/shop_app.dart';
import 'core/helper/shared_prefrence_keys.dart';
import 'core/router/app_router.dart';
bool isLoggedInUser = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(ShopApp(appRouter: AppRouter()));
}
checkLoggedInUser()async {
  String? userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty()){
    isLoggedInUser = true;
  }else{
    isLoggedInUser = false;
  }
}