import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/features/check_out/data/repo/checkout_repo.dart';
import '../../features/cart/data/repos/cart_repo.dart';
import '../../features/check_out/data/services/stripe_sdk_service.dart';
import '../../features/check_out/data/services/stripe_service.dart';
import '../../features/favorits/data/repo/favorite_repo.dart';
import '../../features/home/data/repos/banner/banner_repo.dart';
import '../../features/home/data/repos/categories/categories_repo.dart';
import '../../features/home/data/repos/products/products_repo.dart';
import '../../features/search/data/repo/search_repo.dart';
import '../../features/home/data/api/home_api_service.dart';
import '../../features/sign_up/data/repo/sign_up_repo.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repo/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  // banner
  getIt.registerLazySingleton<BannerRepo>(() => BannerRepo(getIt()));

  // categories
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(getIt()));

  // products
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));

  // search
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));

  // favorit
  getIt.registerLazySingleton<FavoritRepo>(() => FavoritRepo());

  // Cart
  getIt.registerLazySingleton<CartRepo>(() => CartRepo());
  // StripeService
  getIt.registerLazySingleton<StripeService>(() => StripeService(dio));

  // StripeSdkService
  // getIt.registerLazySingleton<StripeSdkService>(() => StripeSdkService());
  
  // Stripe Repository
  // getIt.registerLazySingleton<CheckoutRepo>(() =>CheckoutRepo(getIt<StripeService>(), getIt<StripeSdkService>()));

}
