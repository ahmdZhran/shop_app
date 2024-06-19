import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/core/networking/api_services.dart';
import 'package:shop_app/core/networking/dio_factory.dart';
import 'package:shop_app/features/auth/data/repo/login_repo.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));
}
