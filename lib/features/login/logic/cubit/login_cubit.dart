import 'package:flutter/widgets.dart';
import 'package:shop_app/core/helper/shared_prefrence.dart';
import 'package:shop_app/core/helper/shared_prefrence_keys.dart';
import 'package:shop_app/core/networking/dio_factory.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._loginRepo,
  ) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final LoginRepo _loginRepo;

  void emitLoginStates() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));

    response.when(success: (loginResponse) async {
      // final token = loginResponse.userData?.token;
      // if (token != null) {
      //   await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
      //   // DioFactory.setTokenIntoHeaderAfterLogin(token);
      //   //  DioFactory.setTokenAfterLogin(token!);
      // }
      await saveUserToken(loginResponse.userData?.token ?? "");
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
   await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
