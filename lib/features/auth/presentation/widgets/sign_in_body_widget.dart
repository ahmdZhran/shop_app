import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/di/dependency_injection.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';
import 'package:shop_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:shop_app/features/auth/presentation/widgets/is_has_an_account.dart';

import 'text_form_field_body.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginTextFormFields(),
          ),
          const SizedBox(height: 30),
          IsHasAnAccount(
            textOne: AppStrings.dontHaveAnAccount,
            textTwo: AppStrings.signUp,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const SignUpView();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
