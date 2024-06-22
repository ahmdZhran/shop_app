import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/features/sign_up/data/repo/sign_up_rep.dart';
import 'package:shop_app/features/sign_up/logic/cubit/signup_cubit.dart';
import '../networking/api_services.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //signup

  getIt.registerFactory<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
