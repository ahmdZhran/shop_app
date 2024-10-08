import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/adapters.dart';
import 'features/check_out/data/services/api_keys.dart';
import 'core/app/shop_app.dart';
import 'core/di/dependency_injection.dart';
import 'core/helper/extensions.dart';
import 'core/helper/shared_prefrence.dart';
import 'core/helper/shared_prefrence_keys.dart';
import 'core/router/app_router.dart';
import 'features/cart/data/models/cart_item_model.dart';
import 'features/favorites/data/models/favorite_item_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // hive initializatoin
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteItemModelAdapter());
  await Hive.openBox<FavoriteItemModel>('favorites');
  Hive.registerAdapter(CartItemModelAdapter());
  await Hive.openBox<CartItemModel>('cart_items');
 await setupGetIt();

  // Stripe
  Stripe.publishableKey = ApiKeys.stripePublishableKey;
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
