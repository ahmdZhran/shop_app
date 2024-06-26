import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/api/home_api_service.dart';
import '../../features/home/data/repo/home_repo.dart';
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
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
