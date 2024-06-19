import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/widgets/custom_text_form_fields.dart';
import 'package:shop_app/features/auth/data/models/login_request_body.dart';
import 'package:shop_app/features/auth/logic/cubit/login_cubit.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsecure = true;
  late TextEditingController passworController;

  @override
  void initState() {
    passworController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            lableText: AppStrings.emailAdress,
          ),
          const SizedBox(height: 40),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            obscureText: true,
            suffixIcon: SizedBox(
              height: 10, // Set height consistent with text form field
              child: IconButton(
                onPressed: () {
                  // Handle password visibility toggle
                },
                icon: const Icon(
                  Icons.visibility_outlined,
                ),
              ),
            ),
            lableText: AppStrings.password,
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {
              valdiateThenDoLogin(context);
            },
            text: Text(
              AppStrings.login,
              style: CustomTextStyle.semiBold16.copyWith(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void valdiateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
                email: context.read<LoginCubit>().emailController.text,
                password: context.read<LoginCubit>().passwordController.text),
          );
    }
  }
}
