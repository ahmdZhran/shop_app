import 'package:flutter/material.dart';

import 'core/app/shop_app.dart';
import 'core/helper/shared_pref.dart';
import 'core/router/app_router.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref().instantiatePreferences();
  runApp(ShopApp(
    appRouter: AppRouter(),
  ));
}
