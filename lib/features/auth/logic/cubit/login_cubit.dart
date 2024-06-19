import 'package:flutter/widgets.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repo/login_repo.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final LoginRepo _loginRepo;

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(loginRequestBody);

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error));
    });
  }
}
