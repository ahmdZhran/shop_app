import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';
import 'package:shop_app/features/auth/logic/cubit/login_state.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (loginResponse) {},
            error: (error) {},
          );

        },
        child: SizedBox());
  }
}
