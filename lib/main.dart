import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/helper/extensions.dart';
import 'core/helper/shared_prefrence.dart';
import 'core/di/dependency_injection.dart';

import 'core/app/shop_app.dart';
import 'core/helper/shared_prefrence_keys.dart';
import 'core/router/app_router.dart';
import 'features/favorits/data/models/favorite_item_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteItemModelAdapter());
  await Hive.openBox<FavoriteItemModel>('favorites');
  setupGetIt();
  await checkLoggedInUser();
  runApp(ShopApp(appRouter: AppRouter()));
}

checkLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
