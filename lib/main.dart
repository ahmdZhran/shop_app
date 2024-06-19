import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';

import 'core/app/shop_app.dart';
import 'core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(ShopApp(appRouter: AppRouter()));
}
